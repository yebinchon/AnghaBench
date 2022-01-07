
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wtap_hal {TYPE_1__* plugin; } ;
struct TYPE_2__ {int (* deinit ) (TYPE_1__*) ;} ;


 int stub1 (TYPE_1__*) ;

void
deregister_plugin(struct wtap_hal *hal)
{

 hal->plugin->deinit(hal->plugin);
 hal->plugin = ((void*)0);
}
