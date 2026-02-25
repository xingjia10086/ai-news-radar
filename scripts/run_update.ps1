Param()
$ErrorActionPreference = 'Stop'
Set-Location -Path 'D:\IDEAI\AI-News\ai-news-radar'
.\.venv\Scripts\python.exe scripts\update_news.py --output-dir data --window-hours 24 --rss-opml feeds\follow.opml | Tee-Object -FilePath 'data\scheduled-update.log' -Append
