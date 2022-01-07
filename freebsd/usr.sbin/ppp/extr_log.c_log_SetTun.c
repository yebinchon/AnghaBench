
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* LogIfaceName ;
 int LogTunno ;

void
log_SetTun(int tunno, const char *ifaceName)
{
  LogTunno = tunno;
  LogIfaceName = ifaceName;
}
