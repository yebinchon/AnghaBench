
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wtap_plugin {TYPE_1__* wp_sdev; } ;
struct visibility_plugin {int pl_mtx; } ;
struct TYPE_2__ {struct visibility_plugin* si_drv1; } ;


 int GID_WHEEL ;
 int MTX_DEF ;
 int MTX_RECURSE ;
 int UID_ROOT ;
 TYPE_1__* make_dev (int *,int ,int ,int ,int,char const*) ;
 int mtx_init (int *,char*,int *,int) ;
 int printf (char*) ;
 int vis_cdevsw ;

void
visibility_init(struct wtap_plugin *plugin)
{
 struct visibility_plugin *vis_plugin;

 vis_plugin = (struct visibility_plugin *) plugin;
 plugin->wp_sdev = make_dev(&vis_cdevsw,0,UID_ROOT,GID_WHEEL,0600,
     (const char *)"visctl");
 plugin->wp_sdev->si_drv1 = vis_plugin;
 mtx_init(&vis_plugin->pl_mtx, "visibility_plugin mtx",
     ((void*)0), MTX_DEF | MTX_RECURSE);
 printf("Using visibility wtap plugin...\n");
}
