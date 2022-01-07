
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_ALERT ;
 int LOG_DEBUG ;
 int LOG_ERR ;
 int LOG_INFO ;
 int LOG_WARNING ;




 int LogMAX ;
 int LogMIN ;



__attribute__((used)) static int
syslogLevel(int lev)
{
  switch (lev) {
  case 130:
    return LOG_INFO;
  case 132:
  case 129:
    return LOG_DEBUG;
  case 128:
    return LOG_WARNING;
  case 131:
    return LOG_ERR;
  case 133:
    return LOG_ALERT;
  }
  return lev >= LogMIN && lev <= LogMAX ? LOG_INFO : 0;
}
