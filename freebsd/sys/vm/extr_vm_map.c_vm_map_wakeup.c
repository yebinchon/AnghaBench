
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* vm_map_t ;
struct TYPE_3__ {int root; } ;


 int map_sleep_mtx ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int wakeup (int *) ;

void
vm_map_wakeup(vm_map_t map)
{






 mtx_lock(&map_sleep_mtx);
 mtx_unlock(&map_sleep_mtx);
 wakeup(&map->root);
}
