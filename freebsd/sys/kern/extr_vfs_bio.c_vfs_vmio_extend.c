
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t vm_pindex_t ;
typedef int vm_page_t ;
typedef int vm_offset_t ;
typedef int vm_object_t ;
struct buf {int b_npages; int b_offset; int b_bcount; int b_flags; int * b_pages; TYPE_1__* b_bufobj; } ;
struct TYPE_2__ {int bo_object; } ;


 int BUF_CHECK_UNMAPPED (struct buf*) ;
 int B_CACHE ;
 scalar_t__ OFF_TO_IDX (int) ;
 int PAGE_MASK ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int VM_ALLOC_IGN_SBUSY ;
 int VM_ALLOC_NOBUSY ;
 int VM_ALLOC_SYSTEM ;
 int VM_ALLOC_WIRED ;
 int VM_OBJECT_WLOCK (int ) ;
 int VM_OBJECT_WUNLOCK (int ) ;
 int bpmap_qenter (struct buf*) ;
 scalar_t__ buf_mapped (struct buf*) ;
 int vfs_buf_test_cache (struct buf*,int,int,int,int ) ;
 int vm_page_grab_pages (int ,scalar_t__,int,int *,int) ;

__attribute__((used)) static void
vfs_vmio_extend(struct buf *bp, int desiredpages, int size)
{




 vm_object_t obj;
 vm_offset_t toff;
 vm_offset_t tinc;
 vm_page_t m;






 obj = bp->b_bufobj->bo_object;
 if (bp->b_npages < desiredpages) {
  VM_OBJECT_WLOCK(obj);
  (void)vm_page_grab_pages(obj,
      OFF_TO_IDX(bp->b_offset) + bp->b_npages,
      VM_ALLOC_SYSTEM | VM_ALLOC_IGN_SBUSY |
      VM_ALLOC_NOBUSY | VM_ALLOC_WIRED,
      &bp->b_pages[bp->b_npages], desiredpages - bp->b_npages);
  VM_OBJECT_WUNLOCK(obj);
  bp->b_npages = desiredpages;
 }
 toff = bp->b_bcount;
 tinc = PAGE_SIZE - ((bp->b_offset + toff) & PAGE_MASK);
 while ((bp->b_flags & B_CACHE) && toff < size) {
  vm_pindex_t pi;

  if (tinc > (size - toff))
   tinc = size - toff;
  pi = ((bp->b_offset & PAGE_MASK) + toff) >> PAGE_SHIFT;
  m = bp->b_pages[pi];
  vfs_buf_test_cache(bp, bp->b_offset, toff, tinc, m);
  toff += tinc;
  tinc = PAGE_SIZE;
 }




 if (buf_mapped(bp))
  bpmap_qenter(bp);
 else
  BUF_CHECK_UNMAPPED(bp);
}
