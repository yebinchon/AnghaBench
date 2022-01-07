
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_17__ {scalar_t__ vm_quantum_mask; } ;
typedef TYPE_1__ vmem_t ;
typedef scalar_t__ vmem_size_t ;
typedef scalar_t__ vmem_addr_t ;
struct TYPE_18__ {scalar_t__ bt_type; scalar_t__ bt_size; scalar_t__ bt_start; } ;
typedef TYPE_2__ bt_t ;


 void* BT_TYPE_BUSY ;
 scalar_t__ BT_TYPE_FREE ;
 int MPASS (int) ;
 int TAILQ_PREV (TYPE_2__*,int ,int ) ;
 int VMEM_ASSERT_LOCKED (TYPE_1__*) ;
 TYPE_2__* bt_alloc (TYPE_1__*) ;
 int bt_insbusy (TYPE_1__*,TYPE_2__*) ;
 int bt_insfree (TYPE_1__*,TYPE_2__*) ;
 int bt_insseg (TYPE_1__*,TYPE_2__*,int ) ;
 int bt_remfree (TYPE_1__*,TYPE_2__*) ;
 int bt_seglist ;
 int vmem_seglist ;

__attribute__((used)) static void
vmem_clip(vmem_t *vm, bt_t *bt, vmem_addr_t start, vmem_size_t size)
{
 bt_t *btnew;
 bt_t *btprev;

 VMEM_ASSERT_LOCKED(vm);
 MPASS(bt->bt_type == BT_TYPE_FREE);
 MPASS(bt->bt_size >= size);
 bt_remfree(vm, bt);
 if (bt->bt_start != start) {
  btprev = bt_alloc(vm);
  btprev->bt_type = BT_TYPE_FREE;
  btprev->bt_start = bt->bt_start;
  btprev->bt_size = start - bt->bt_start;
  bt->bt_start = start;
  bt->bt_size -= btprev->bt_size;
  bt_insfree(vm, btprev);
  bt_insseg(vm, btprev,
      TAILQ_PREV(bt, vmem_seglist, bt_seglist));
 }
 MPASS(bt->bt_start == start);
 if (bt->bt_size != size && bt->bt_size - size > vm->vm_quantum_mask) {

  btnew = bt_alloc(vm);
  btnew->bt_type = BT_TYPE_BUSY;
  btnew->bt_start = bt->bt_start;
  btnew->bt_size = size;
  bt->bt_start = bt->bt_start + size;
  bt->bt_size -= size;
  bt_insfree(vm, bt);
  bt_insseg(vm, btnew,
      TAILQ_PREV(bt, vmem_seglist, bt_seglist));
  bt_insbusy(vm, btnew);
  bt = btnew;
 } else {
  bt->bt_type = BT_TYPE_BUSY;
  bt_insbusy(vm, bt);
 }
 MPASS(bt->bt_size >= size);
}
