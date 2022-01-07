
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_1__* vm_object_t ;
struct TYPE_9__ {int flags; int type; int * handle; } ;


 int KASSERT (int,char*) ;
 int NOBJLIST (int *) ;
 int OBJT_DEAD ;
 int OBJ_DEAD ;
 int TAILQ_REMOVE (int ,TYPE_1__*,int ) ;
 int VM_OBJECT_ASSERT_WLOCKED (TYPE_1__*) ;
 int VM_OBJECT_WLOCK (TYPE_1__*) ;
 int VM_OBJECT_WUNLOCK (TYPE_1__*) ;
 int pager_object_list ;
 int sw_alloc_sx ;
 int swp_pager_meta_free_all (TYPE_1__*) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;
 int vm_object_pip_wait (TYPE_1__*,char*) ;

__attribute__((used)) static void
swap_pager_dealloc(vm_object_t object)
{

 VM_OBJECT_ASSERT_WLOCKED(object);
 KASSERT((object->flags & OBJ_DEAD) != 0, ("dealloc of reachable obj"));





 if (object->handle != ((void*)0)) {
  VM_OBJECT_WUNLOCK(object);
  sx_xlock(&sw_alloc_sx);
  TAILQ_REMOVE(NOBJLIST(object->handle), object,
      pager_object_list);
  sx_xunlock(&sw_alloc_sx);
  VM_OBJECT_WLOCK(object);
 }

 vm_object_pip_wait(object, "swpdea");







 swp_pager_meta_free_all(object);
 object->handle = ((void*)0);
 object->type = OBJT_DEAD;
}
