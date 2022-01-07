
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gv_volume {void* size; TYPE_1__* provider; } ;
typedef void* off_t ;
struct TYPE_2__ {void* mediasize; } ;


 int g_topology_lock () ;
 int g_topology_unlock () ;

void
gv_update_vol_size(struct gv_volume *v, off_t size)
{
 if (v == ((void*)0))
  return;
 if (v->provider != ((void*)0)) {
  g_topology_lock();
  v->provider->mediasize = size;
  g_topology_unlock();
 }
 v->size = size;
}
