
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_KEPT_LOCAL ;
 int LOG_KEPT_SYSLOG ;
 int LogLOG ;
 int LogMAX ;
 int LogMAXCONF ;
 int LogMIN ;
 int LogMask ;
 int LogMaskLocal ;
 int MSK (int) ;

int
log_IsKept(int id)
{
  if (id == LogLOG)
    return LOG_KEPT_SYSLOG;
  if (id < LogMIN || id > LogMAX)
    return 0;
  if (id > LogMAXCONF)
    return LOG_KEPT_LOCAL | LOG_KEPT_SYSLOG;

  return ((LogMaskLocal & MSK(id)) ? LOG_KEPT_LOCAL : 0) |
    ((LogMask & MSK(id)) ? LOG_KEPT_SYSLOG : 0);
}
