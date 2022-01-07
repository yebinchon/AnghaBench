
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* vm_map_entry_t ;
typedef int (* segment_callback ) (TYPE_1__*,void*) ;
struct TYPE_6__ {struct TYPE_6__* next; } ;


 int stub1 (TYPE_1__*,void*) ;

__attribute__((used)) static void
each_dumpable_segment(vm_map_entry_t map, segment_callback func, void *closure)
{
 vm_map_entry_t entry;

 for (entry = map; entry != ((void*)0); entry = entry->next)
  (*func)(entry, closure);
}
