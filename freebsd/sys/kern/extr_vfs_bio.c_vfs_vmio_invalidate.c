
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ vm_page_t ;
typedef int vm_offset_t ;
typedef int vm_object_t ;
struct buf {int b_npages; int b_flags; int b_bufsize; int b_offset; scalar_t__* b_pages; TYPE_1__* b_bufobj; scalar_t__ b_data; } ;
struct TYPE_2__ {int bo_object; } ;


 int BUF_CHECK_MAPPED (struct buf*) ;
 int BUF_CHECK_UNMAPPED (struct buf*) ;
 int B_NOREUSE ;
 int KASSERT (int,char*) ;
 int PAGE_MASK ;
 int PAGE_SIZE ;
 int VM_ALLOC_SBUSY ;
 int VM_OBJECT_WLOCK (int ) ;
 int VM_OBJECT_WUNLOCK (int ) ;
 int VPR_NOREUSE ;
 scalar_t__ bogus_page ;
 scalar_t__ buf_mapped (struct buf*) ;
 int panic (char*) ;
 scalar_t__ pmap_page_wired_mappings (scalar_t__) ;
 int pmap_qremove (int ,int) ;
 int trunc_page (int ) ;
 int vm_page_busy_acquire (scalar_t__,int ) ;
 int vm_page_release_locked (scalar_t__,int) ;
 int vm_page_set_invalid (scalar_t__,int,int) ;
 int vm_page_sunbusy (scalar_t__) ;

__attribute__((used)) static void
vfs_vmio_invalidate(struct buf *bp)
{
 vm_object_t obj;
 vm_page_t m;
 int flags, i, resid, poffset, presid;

 if (buf_mapped(bp)) {
  BUF_CHECK_MAPPED(bp);
  pmap_qremove(trunc_page((vm_offset_t)bp->b_data), bp->b_npages);
 } else
  BUF_CHECK_UNMAPPED(bp);
 flags = (bp->b_flags & B_NOREUSE) != 0 ? VPR_NOREUSE : 0;
 obj = bp->b_bufobj->bo_object;
 resid = bp->b_bufsize;
 poffset = bp->b_offset & PAGE_MASK;
 VM_OBJECT_WLOCK(obj);
 for (i = 0; i < bp->b_npages; i++) {
  m = bp->b_pages[i];
  if (m == bogus_page)
   panic("vfs_vmio_invalidate: Unexpected bogus page.");
  bp->b_pages[i] = ((void*)0);

  presid = resid > (PAGE_SIZE - poffset) ?
      (PAGE_SIZE - poffset) : resid;
  KASSERT(presid >= 0, ("brelse: extra page"));
  vm_page_busy_acquire(m, VM_ALLOC_SBUSY);
  if (pmap_page_wired_mappings(m) == 0)
   vm_page_set_invalid(m, poffset, presid);
  vm_page_sunbusy(m);
  vm_page_release_locked(m, flags);
  resid -= presid;
  poffset = 0;
 }
 VM_OBJECT_WUNLOCK(obj);
 bp->b_npages = 0;
}
