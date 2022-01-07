
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ cn_pri; char* cn_name; } ;


 scalar_t__ CN_DEAD ;
 int OF_finddevice (char*) ;
 int callout_init (int *,int) ;
 int callout_reset (int *,int,int ,int *) ;
 int mambo_callout ;
 TYPE_1__ mambo_consdev ;
 int mambo_timeout ;
 int mambo_ttydevsw ;
 int polltime ;
 int tp ;
 int tty_alloc (int *,int *) ;
 int tty_init_console (int ,int ) ;
 int tty_makedev (int ,int *,char*,char*) ;

__attribute__((used)) static void
cn_drvinit(void *unused)
{

 if (mambo_consdev.cn_pri != CN_DEAD &&
     mambo_consdev.cn_name[0] != '\0') {
  if (OF_finddevice("/mambo") == -1)
   return;

  tp = tty_alloc(&mambo_ttydevsw, ((void*)0));
  tty_init_console(tp, 0);
  tty_makedev(tp, ((void*)0), "%s", "mambocons");

  polltime = 1;

  callout_init(&mambo_callout, 1);
  callout_reset(&mambo_callout, polltime, mambo_timeout, ((void*)0));
 }
}
