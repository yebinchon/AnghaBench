
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ vm_nbusytag; int * vm_hashlist; int * vm_hash0; int vm_seglist; int vm_cursor; } ;
typedef TYPE_1__ vmem_t ;
typedef int bt_t ;


 int MPASS (int) ;
 int M_VMEM ;
 int * TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,int *,int ) ;
 int VMEM_CONDVAR_DESTROY (TYPE_1__*) ;
 int VMEM_LOCK (TYPE_1__*) ;
 int VMEM_LOCK_DESTROY (TYPE_1__*) ;
 int bt_freetrim (TYPE_1__*,int ) ;
 int bt_remseg (TYPE_1__*,int *) ;
 int bt_seglist ;
 int free (int *,int ) ;
 int qc_destroy (TYPE_1__*) ;
 int uma_zfree (int ,TYPE_1__*) ;
 int vmem_zone ;

__attribute__((used)) static void
vmem_destroy1(vmem_t *vm)
{
 bt_t *bt;




 qc_destroy(vm);




 VMEM_LOCK(vm);
 MPASS(vm->vm_nbusytag == 0);

 TAILQ_REMOVE(&vm->vm_seglist, &vm->vm_cursor, bt_seglist);
 while ((bt = TAILQ_FIRST(&vm->vm_seglist)) != ((void*)0))
  bt_remseg(vm, bt);

 if (vm->vm_hashlist != ((void*)0) && vm->vm_hashlist != vm->vm_hash0)
  free(vm->vm_hashlist, M_VMEM);

 bt_freetrim(vm, 0);

 VMEM_CONDVAR_DESTROY(vm);
 VMEM_LOCK_DESTROY(vm);
 uma_zfree(vmem_zone, vm);
}
