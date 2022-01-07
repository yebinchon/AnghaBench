
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_2__ {scalar_t__ cmdlist; } ;


 int EVENT_MAX ;
 int apmctl_fd ;
 int apmd_configfile ;
 int debug_level ;
 int err (int,char*,...) ;
 TYPE_1__* events ;
 int fclose (int *) ;
 int * fopen (int ,char*) ;
 int write (int ,int*,int) ;
 int yydebug ;
 int * yyin ;
 scalar_t__ yyparse () ;

void
read_config(void)
{
 int i;

 if ((yyin = fopen(apmd_configfile, "r")) == ((void*)0)) {
  err(1, "cannot open config file");
 }





 if (yyparse() != 0)
  err(1, "cannot parse config file");

 fclose(yyin);


 for (i = 0; i < EVENT_MAX; i++) {
  if (events[i].cmdlist) {
   u_int event_type = i;
   if (write(apmctl_fd, &event_type, sizeof(u_int)) == -1) {
    err(1, "cannot enable event 0x%x", event_type);
   }
  }
 }
}
