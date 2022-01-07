
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty {int dummy; } ;
typedef int phandle_t ;
typedef int output ;
struct TYPE_2__ {scalar_t__ cn_pri; char* cn_name; } ;


 scalar_t__ CN_DEAD ;
 int OF_finddevice (char*) ;
 int OF_getprop (int,char*,char*,int) ;
 int callout_init_mtx (int *,int ,int ) ;
 TYPE_1__ ofw_consdev ;
 int ofw_timer ;
 int ofw_ttydevsw ;
 scalar_t__ strlen (char*) ;
 struct tty* tty_alloc (int *,int *) ;
 int tty_getlock (struct tty*) ;
 int tty_makealias (struct tty*,char*,char*) ;
 int tty_makedev (struct tty*,int *,char*,char*) ;

__attribute__((used)) static void
cn_drvinit(void *unused)
{
 phandle_t options;
 char output[32];
 struct tty *tp;

 if (ofw_consdev.cn_pri != CN_DEAD &&
     ofw_consdev.cn_name[0] != '\0') {
  tp = tty_alloc(&ofw_ttydevsw, ((void*)0));
  tty_makedev(tp, ((void*)0), "%s", "ofwcons");





  if ((options = OF_finddevice("/options")) == -1 ||
      OF_getprop(options, "output-device", output,
      sizeof(output)) == -1)
   return;
  if (strlen(output) > 0)
   tty_makealias(tp, "%s", output);
  callout_init_mtx(&ofw_timer, tty_getlock(tp), 0);
 }
}
