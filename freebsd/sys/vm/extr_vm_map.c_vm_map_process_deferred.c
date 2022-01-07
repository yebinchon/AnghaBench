
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int * vm_object_t ;
typedef TYPE_2__* vm_map_entry_t ;
struct thread {TYPE_2__* td_map_def_user; } ;
struct TYPE_5__ {int * vm_object; } ;
struct TYPE_6__ {int eflags; int end; int start; TYPE_1__ object; struct TYPE_6__* defer_next; } ;


 int FALSE ;
 int KASSERT (int,char*) ;
 int MAP_ENTRY_IS_SUB_MAP ;
 int MAP_ENTRY_VN_EXEC ;
 int MAP_ENTRY_WRITECNT ;
 int MPASS (int) ;
 struct thread* curthread ;
 int vm_map_entry_deallocate (TYPE_2__*,int ) ;
 int vm_map_entry_set_vnode_text (TYPE_2__*,int) ;
 int vm_pager_release_writecount (int *,int ,int ) ;

__attribute__((used)) static void
vm_map_process_deferred(void)
{
 struct thread *td;
 vm_map_entry_t entry, next;
 vm_object_t object;

 td = curthread;
 entry = td->td_map_def_user;
 td->td_map_def_user = ((void*)0);
 while (entry != ((void*)0)) {
  next = entry->defer_next;
  MPASS((entry->eflags & (MAP_ENTRY_WRITECNT |
      MAP_ENTRY_VN_EXEC)) != (MAP_ENTRY_WRITECNT |
      MAP_ENTRY_VN_EXEC));
  if ((entry->eflags & MAP_ENTRY_WRITECNT) != 0) {




   KASSERT((entry->eflags & MAP_ENTRY_IS_SUB_MAP) == 0,
       ("Submap with writecount"));
   object = entry->object.vm_object;
   KASSERT(object != ((void*)0), ("No object for writecount"));
   vm_pager_release_writecount(object, entry->start,
       entry->end);
  }
  vm_map_entry_set_vnode_text(entry, 0);
  vm_map_entry_deallocate(entry, FALSE);
  entry = next;
 }
}
