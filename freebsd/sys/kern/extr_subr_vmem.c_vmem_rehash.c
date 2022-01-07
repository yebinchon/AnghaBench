
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int vm_hashsize; struct vmem_hashlist* vm_hash0; struct vmem_hashlist* vm_hashlist; } ;
typedef TYPE_1__ vmem_t ;
typedef int vmem_size_t ;
struct vmem_hashlist {int dummy; } ;
typedef int bt_t ;


 int ENOMEM ;
 int * LIST_FIRST (struct vmem_hashlist*) ;
 int LIST_INIT (struct vmem_hashlist*) ;
 int MPASS (int) ;
 int M_NOWAIT ;
 int M_VMEM ;
 int VMEM_LOCK (TYPE_1__*) ;
 int VMEM_UNLOCK (TYPE_1__*) ;
 int bt_insbusy (TYPE_1__*,int *) ;
 int bt_rembusy (TYPE_1__*,int *) ;
 int free (struct vmem_hashlist*,int ) ;
 struct vmem_hashlist* malloc (int,int ,int ) ;

__attribute__((used)) static int
vmem_rehash(vmem_t *vm, vmem_size_t newhashsize)
{
 bt_t *bt;
 int i;
 struct vmem_hashlist *newhashlist;
 struct vmem_hashlist *oldhashlist;
 vmem_size_t oldhashsize;

 MPASS(newhashsize > 0);

 newhashlist = malloc(sizeof(struct vmem_hashlist) * newhashsize,
     M_VMEM, M_NOWAIT);
 if (newhashlist == ((void*)0))
  return ENOMEM;
 for (i = 0; i < newhashsize; i++) {
  LIST_INIT(&newhashlist[i]);
 }

 VMEM_LOCK(vm);
 oldhashlist = vm->vm_hashlist;
 oldhashsize = vm->vm_hashsize;
 vm->vm_hashlist = newhashlist;
 vm->vm_hashsize = newhashsize;
 if (oldhashlist == ((void*)0)) {
  VMEM_UNLOCK(vm);
  return 0;
 }
 for (i = 0; i < oldhashsize; i++) {
  while ((bt = LIST_FIRST(&oldhashlist[i])) != ((void*)0)) {
   bt_rembusy(vm, bt);
   bt_insbusy(vm, bt);
  }
 }
 VMEM_UNLOCK(vm);

 if (oldhashlist != vm->vm_hash0) {
  free(oldhashlist, M_VMEM);
 }

 return 0;
}
