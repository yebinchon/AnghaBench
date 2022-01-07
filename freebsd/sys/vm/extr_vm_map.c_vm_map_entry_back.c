
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_2__* vm_object_t ;
typedef TYPE_3__* vm_map_entry_t ;
struct TYPE_6__ {TYPE_2__* vm_object; } ;
struct TYPE_8__ {int eflags; int * cred; scalar_t__ start; scalar_t__ end; scalar_t__ offset; TYPE_1__ object; } ;
struct TYPE_7__ {scalar_t__ charge; int * cred; } ;


 int KASSERT (int,char*) ;
 int MAP_ENTRY_IS_SUB_MAP ;
 int OBJT_DEFAULT ;
 int atop (scalar_t__) ;
 TYPE_2__* vm_object_allocate (int ,int ) ;

__attribute__((used)) static inline void
vm_map_entry_back(vm_map_entry_t entry)
{
 vm_object_t object;

 KASSERT(entry->object.vm_object == ((void*)0),
     ("map entry %p has backing object", entry));
 KASSERT((entry->eflags & MAP_ENTRY_IS_SUB_MAP) == 0,
     ("map entry %p is a submap", entry));
 object = vm_object_allocate(OBJT_DEFAULT,
     atop(entry->end - entry->start));
 entry->object.vm_object = object;
 entry->offset = 0;
 if (entry->cred != ((void*)0)) {
  object->cred = entry->cred;
  object->charge = entry->end - entry->start;
  entry->cred = ((void*)0);
 }
}
