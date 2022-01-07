
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wtap_plugin {int (* init ) (struct wtap_plugin*) ;} ;
struct wtap_hal {struct wtap_plugin* plugin; } ;


 int stub1 (struct wtap_plugin*) ;

void
register_plugin(struct wtap_hal *hal, struct wtap_plugin *plugin)
{

 plugin->init(plugin);
 hal->plugin = plugin;
}
