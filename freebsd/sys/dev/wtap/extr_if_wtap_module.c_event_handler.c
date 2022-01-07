
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wtap_plugin {int dummy; } ;
struct wtap_hal {int dummy; } ;
struct TYPE_2__ {int work; int deinit; int init; struct wtap_hal* wp_hal; } ;
struct visibility_plugin {TYPE_1__ base; } ;
typedef int module_t ;


 int EOPNOTSUPP ;
 int GID_WHEEL ;


 int M_NOWAIT ;
 int M_WTAP ;
 int M_WTAP_PLUGIN ;
 int M_ZERO ;
 int UID_ROOT ;
 int bzero (struct wtap_hal*,int) ;
 int deinit_hal (struct wtap_hal*) ;
 int deregister_plugin (struct wtap_hal*) ;
 int destroy_dev (int ) ;
 int free (struct wtap_hal*,int ) ;
 struct wtap_hal* hal ;
 int init_hal (struct wtap_hal*) ;
 int make_dev (int *,int ,int ,int ,int,char const*) ;
 scalar_t__ malloc (int,int ,int) ;
 int printf (char*) ;
 int register_plugin (struct wtap_hal*,struct wtap_plugin*) ;
 int sdev ;
 int visibility_deinit ;
 int visibility_init ;
 int visibility_work ;
 int wtap_cdevsw ;

__attribute__((used)) static int
event_handler(module_t module, int event, void *arg)
{
 struct visibility_plugin *plugin;
 int e = 0;

 switch (event) {
 case 129:
  sdev = make_dev(&wtap_cdevsw,0,UID_ROOT,
      GID_WHEEL,0600,(const char *)"wtapctl");
  hal = (struct wtap_hal *)malloc(sizeof(struct wtap_hal),
      M_WTAP, M_NOWAIT | M_ZERO);
  bzero(hal, sizeof(struct wtap_hal));

  init_hal(hal);


  plugin = (struct visibility_plugin *)malloc
      (sizeof(struct visibility_plugin), M_WTAP_PLUGIN,
      M_NOWAIT | M_ZERO);
  plugin->base.wp_hal = hal;
  plugin->base.init = visibility_init;
  plugin->base.deinit = visibility_deinit;
  plugin->base.work = visibility_work;
  register_plugin(hal, (struct wtap_plugin *)plugin);

                printf("Loaded wtap wireless simulator\n");
                break;
 case 128:
  destroy_dev(sdev);
  deregister_plugin(hal);
  deinit_hal(hal);
  free(hal, M_WTAP);
  printf("Unloading wtap wireless simulator\n");
  break;
 default:
  e = EOPNOTSUPP;
  break;
 }

 return(e);
}
