
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * LogIfaceName ;
 int LogTunno ;
 int closelog () ;

void
log_Close()
{
  closelog();
  LogTunno = -1;
  LogIfaceName = ((void*)0);
}
