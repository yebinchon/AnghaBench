
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
typedef int * flash_slicer_t ;
struct TYPE_2__ {int * slicer; } ;


 int TRUE ;
 TYPE_1__* g_flashmap_slicers ;
 int g_topology_lock () ;
 int g_topology_unlock () ;

void flash_register_slicer(flash_slicer_t slicer, u_int type, bool force)
{

 g_topology_lock();
 if (g_flashmap_slicers[type].slicer == ((void*)0) || force == TRUE)
  g_flashmap_slicers[type].slicer = slicer;
 g_topology_unlock();
}
