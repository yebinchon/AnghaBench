
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* vm_map_entry_t ;
struct TYPE_5__ {int * vm_object; } ;
struct TYPE_6__ {int eflags; scalar_t__ end; scalar_t__ start; scalar_t__ offset; scalar_t__ protection; scalar_t__ max_protection; scalar_t__ inheritance; scalar_t__ wired_count; scalar_t__ cred; TYPE_1__ object; } ;


 int KASSERT (int,char*) ;
 int MAP_ENTRY_NOMERGE_MASK ;

__attribute__((used)) static bool
vm_map_mergeable_neighbors(vm_map_entry_t prev, vm_map_entry_t entry)
{

 KASSERT((prev->eflags & MAP_ENTRY_NOMERGE_MASK) == 0 ||
     (entry->eflags & MAP_ENTRY_NOMERGE_MASK) == 0,
     ("vm_map_mergeable_neighbors: neither %p nor %p are mergeable",
     prev, entry));
 return (prev->end == entry->start &&
     prev->object.vm_object == entry->object.vm_object &&
     (prev->object.vm_object == ((void*)0) ||
     prev->offset + (prev->end - prev->start) == entry->offset) &&
     prev->eflags == entry->eflags &&
     prev->protection == entry->protection &&
     prev->max_protection == entry->max_protection &&
     prev->inheritance == entry->inheritance &&
     prev->wired_count == entry->wired_count &&
     prev->cred == entry->cred);
}
