
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


struct TYPE_12__ {int bt_type; scalar_t__ bt_size; scalar_t__ bt_start; } ;
struct TYPE_13__ {int vm_quantum_mask; int vm_hash0; int vm_hashlist; int vm_hashsize; int * vm_freelist; TYPE_10__ vm_cursor; int vm_seglist; scalar_t__ vm_inuse; scalar_t__ vm_limit; scalar_t__ vm_size; scalar_t__ vm_nbusytag; scalar_t__ vm_quantum_shift; int vm_name; int vm_freetags; scalar_t__ vm_nfreetags; } ;
typedef TYPE_1__ vmem_t ;
typedef int vmem_size_t ;
typedef int vmem_addr_t ;


 int BT_TYPE_CURSOR ;
 int LIST_INIT (int *) ;
 int LIST_INSERT_HEAD (int *,TYPE_1__*,int ) ;
 int MPASS (int) ;
 int TAILQ_INIT (int *) ;
 int TAILQ_INSERT_TAIL (int *,TYPE_10__*,int ) ;
 int VMEM_CONDVAR_INIT (TYPE_1__*,char const*) ;
 int VMEM_HASHSIZE_MIN ;
 int VMEM_LOCK_INIT (TYPE_1__*,char const*) ;
 int VMEM_MAXORDER ;
 int bt_seglist ;
 int bzero (TYPE_1__*,int) ;
 scalar_t__ flsl (int) ;
 int memset (int *,int ,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int qc_init (TYPE_1__*,int) ;
 int strlcpy (int ,char const*,int) ;
 int vm_alllist ;
 scalar_t__ vmem_add (TYPE_1__*,int ,int,int) ;
 int vmem_destroy1 (TYPE_1__*) ;
 int vmem_list ;
 int vmem_list_lock ;

vmem_t *
vmem_init(vmem_t *vm, const char *name, vmem_addr_t base, vmem_size_t size,
    vmem_size_t quantum, vmem_size_t qcache_max, int flags)
{
 int i;

 MPASS(quantum > 0);
 MPASS((quantum & (quantum - 1)) == 0);

 bzero(vm, sizeof(*vm));

 VMEM_CONDVAR_INIT(vm, name);
 VMEM_LOCK_INIT(vm, name);
 vm->vm_nfreetags = 0;
 LIST_INIT(&vm->vm_freetags);
 strlcpy(vm->vm_name, name, sizeof(vm->vm_name));
 vm->vm_quantum_mask = quantum - 1;
 vm->vm_quantum_shift = flsl(quantum) - 1;
 vm->vm_nbusytag = 0;
 vm->vm_size = 0;
 vm->vm_limit = 0;
 vm->vm_inuse = 0;
 qc_init(vm, qcache_max);

 TAILQ_INIT(&vm->vm_seglist);
 vm->vm_cursor.bt_start = vm->vm_cursor.bt_size = 0;
 vm->vm_cursor.bt_type = BT_TYPE_CURSOR;
 TAILQ_INSERT_TAIL(&vm->vm_seglist, &vm->vm_cursor, bt_seglist);

 for (i = 0; i < VMEM_MAXORDER; i++)
  LIST_INIT(&vm->vm_freelist[i]);

 memset(&vm->vm_hash0, 0, sizeof(vm->vm_hash0));
 vm->vm_hashsize = VMEM_HASHSIZE_MIN;
 vm->vm_hashlist = vm->vm_hash0;

 if (size != 0) {
  if (vmem_add(vm, base, size, flags) != 0) {
   vmem_destroy1(vm);
   return ((void*)0);
  }
 }

 mtx_lock(&vmem_list_lock);
 LIST_INSERT_HEAD(&vmem_list, vm, vm_alllist);
 mtx_unlock(&vmem_list_lock);

 return vm;
}
