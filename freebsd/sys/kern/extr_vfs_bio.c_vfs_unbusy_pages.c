
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ vm_page_t ;
typedef int vm_offset_t ;
typedef int vm_object_t ;
struct buf {int b_flags; int b_npages; scalar_t__* b_pages; scalar_t__ b_data; int b_offset; TYPE_1__* b_bufobj; } ;
struct TYPE_2__ {int bo_object; } ;


 int BUF_CHECK_MAPPED (struct buf*) ;
 int BUF_CHECK_UNMAPPED (struct buf*) ;
 int B_VMIO ;
 scalar_t__ OFF_TO_IDX (int ) ;
 int VM_OBJECT_RLOCK (int ) ;
 int VM_OBJECT_RUNLOCK (int ) ;
 scalar_t__ bogus_page ;
 scalar_t__ buf_mapped (struct buf*) ;
 int panic (char*) ;
 int pmap_qenter (int ,scalar_t__*,int) ;
 int runningbufwakeup (struct buf*) ;
 int trunc_page (int ) ;
 int vm_object_pip_wakeupn (int ,int) ;
 scalar_t__ vm_page_lookup (int ,scalar_t__) ;
 int vm_page_sunbusy (scalar_t__) ;

void
vfs_unbusy_pages(struct buf *bp)
{
 int i;
 vm_object_t obj;
 vm_page_t m;
 bool bogus;

 runningbufwakeup(bp);
 if (!(bp->b_flags & B_VMIO))
  return;

 obj = bp->b_bufobj->bo_object;
 bogus = 0;
 for (i = 0; i < bp->b_npages; i++) {
  m = bp->b_pages[i];
  if (m == bogus_page) {
   if (bogus == 0) {
    bogus = 1;
    VM_OBJECT_RLOCK(obj);
   }
   m = vm_page_lookup(obj, OFF_TO_IDX(bp->b_offset) + i);
   if (!m)
    panic("vfs_unbusy_pages: page missing\n");
   bp->b_pages[i] = m;
   if (buf_mapped(bp)) {
    BUF_CHECK_MAPPED(bp);
    pmap_qenter(trunc_page((vm_offset_t)bp->b_data),
        bp->b_pages, bp->b_npages);
   } else
    BUF_CHECK_UNMAPPED(bp);
  }
  vm_page_sunbusy(m);
 }
 if (bogus)
  VM_OBJECT_RUNLOCK(obj);
 vm_object_pip_wakeupn(obj, bp->b_npages);
}
