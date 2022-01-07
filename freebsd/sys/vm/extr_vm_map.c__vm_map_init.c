
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* vm_offset_t ;
typedef TYPE_2__* vm_map_t ;
typedef int pmap_t ;
struct TYPE_4__ {void* start; void* end; int eflags; struct TYPE_4__* prev; struct TYPE_4__* next; } ;
struct TYPE_5__ {scalar_t__ nupdates; scalar_t__ anon_loc; scalar_t__ busy; scalar_t__ timestamp; int * root; scalar_t__ flags; TYPE_1__ header; int pmap; scalar_t__ system_map; int needs_wakeup; } ;


 int FALSE ;
 int MAP_ENTRY_HEADER ;

__attribute__((used)) static void
_vm_map_init(vm_map_t map, pmap_t pmap, vm_offset_t min, vm_offset_t max)
{

 map->header.next = map->header.prev = &map->header;
 map->header.eflags = MAP_ENTRY_HEADER;
 map->needs_wakeup = FALSE;
 map->system_map = 0;
 map->pmap = pmap;
 map->header.end = min;
 map->header.start = max;
 map->flags = 0;
 map->root = ((void*)0);
 map->timestamp = 0;
 map->busy = 0;
 map->anon_loc = 0;



}
