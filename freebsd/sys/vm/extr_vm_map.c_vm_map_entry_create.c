
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* vm_map_t ;
typedef int * vm_map_entry_t ;
struct TYPE_3__ {scalar_t__ system_map; } ;


 int M_NOWAIT ;
 int M_WAITOK ;
 int kmapentzone ;
 int mapentzone ;
 int panic (char*) ;
 int * uma_zalloc (int ,int ) ;

__attribute__((used)) static vm_map_entry_t
vm_map_entry_create(vm_map_t map)
{
 vm_map_entry_t new_entry;

 if (map->system_map)
  new_entry = uma_zalloc(kmapentzone, M_NOWAIT);
 else
  new_entry = uma_zalloc(mapentzone, M_WAITOK);
 if (new_entry == ((void*)0))
  panic("vm_map_entry_create: kernel resources exhausted");
 return (new_entry);
}
