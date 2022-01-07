
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* vm_object_t ;
struct TYPE_6__ {int type; int * handle; } ;


 int OBJT_DEAD ;
 int TAILQ_REMOVE (int *,TYPE_1__*,int ) ;
 int VM_OBJECT_WLOCK (TYPE_1__*) ;
 int VM_OBJECT_WUNLOCK (TYPE_1__*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int pager_object_list ;
 int phys_pager_mtx ;
 int phys_pager_object_list ;

__attribute__((used)) static void
phys_pager_dealloc(vm_object_t object)
{

 if (object->handle != ((void*)0)) {
  VM_OBJECT_WUNLOCK(object);
  mtx_lock(&phys_pager_mtx);
  TAILQ_REMOVE(&phys_pager_object_list, object, pager_object_list);
  mtx_unlock(&phys_pager_mtx);
  VM_OBJECT_WLOCK(object);
 }
 object->handle = ((void*)0);
 object->type = OBJT_DEAD;
}
