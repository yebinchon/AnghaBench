
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* vm_map_entry_t ;
struct TYPE_4__ {struct TYPE_4__* next; } ;


 int free (TYPE_1__*) ;

__attribute__((used)) static void
freemap(vm_map_entry_t map)
{

 while (map != ((void*)0)) {
  vm_map_entry_t next = map->next;
  free(map);
  map = next;
 }
}
