
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wtap_plugin {int wp_sdev; } ;
struct visibility_plugin {int pl_mtx; } ;


 int M_WTAP_PLUGIN ;
 int destroy_dev (int ) ;
 int free (struct visibility_plugin*,int ) ;
 int mtx_destroy (int *) ;
 int printf (char*) ;

void
visibility_deinit(struct wtap_plugin *plugin)
{
 struct visibility_plugin *vis_plugin;

 vis_plugin = (struct visibility_plugin *) plugin;
 destroy_dev(plugin->wp_sdev);
 mtx_destroy(&vis_plugin->pl_mtx);
 free(vis_plugin, M_WTAP_PLUGIN);
 printf("Removing visibility wtap plugin...\n");
}
