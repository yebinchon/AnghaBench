
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int va_list ;
typedef int buf ;
struct TYPE_2__ {int proc_name; } ;


 int EXIT_FAILURE ;
 int LOGMSG_SIZE ;
 int err (int ,char*) ;
 TYPE_1__ uc_cfg ;
 int uc_output (char*,int ,char*) ;
 scalar_t__ vsnprintf (char*,int,char const*,int ) ;

void
uc_vlogmsgx(const char *format, va_list ap)
{
 char buf[LOGMSG_SIZE];

 if (vsnprintf(buf, sizeof(buf), format, ap) < 0)
  err(EXIT_FAILURE, "uc_logmsgx: vsnprintf failed");
 uc_output("%s: %s\n", uc_cfg.proc_name, buf);
}
