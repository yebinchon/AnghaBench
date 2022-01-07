
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_DAEMON ;
 int LOG_PID ;
 int openlog (char const*,int ,int ) ;

void
log_Open(const char *Name)
{
  openlog(Name, LOG_PID, LOG_DAEMON);
}
