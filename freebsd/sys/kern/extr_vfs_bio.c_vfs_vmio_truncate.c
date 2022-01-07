
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ vm_page_t ;
typedef scalar_t__ vm_offset_t ;
typedef int * vm_object_t ;
struct buf {int b_npages; int b_flags; scalar_t__* b_pages; TYPE_1__* b_bufobj; scalar_t__ b_data; } ;
struct TYPE_2__ {int * bo_object; } ;


 int BUF_CHECK_MAPPED (struct buf*) ;
 int BUF_CHECK_UNMAPPED (struct buf*) ;
 int B_DIRECT ;
 int B_NOREUSE ;
 int KASSERT (int,char*) ;
 int PAGE_SHIFT ;
 int VM_OBJECT_WLOCK (int *) ;
 int VM_OBJECT_WUNLOCK (int *) ;
 int VPR_NOREUSE ;
 int VPR_TRYFREE ;
 scalar_t__ bogus_page ;
 scalar_t__ buf_mapped (struct buf*) ;
 int pmap_qremove (scalar_t__,int) ;
 scalar_t__ trunc_page (scalar_t__) ;
 int vm_page_release (scalar_t__,int) ;
 int vm_page_release_locked (scalar_t__,int) ;

__attribute__((used)) static void
vfs_vmio_truncate(struct buf *bp, int desiredpages)
{
 vm_object_t obj;
 vm_page_t m;
 int flags, i;

 if (bp->b_npages == desiredpages)
  return;

 if (buf_mapped(bp)) {
  BUF_CHECK_MAPPED(bp);
  pmap_qremove((vm_offset_t)trunc_page((vm_offset_t)bp->b_data) +
      (desiredpages << PAGE_SHIFT), bp->b_npages - desiredpages);
 } else
  BUF_CHECK_UNMAPPED(bp);




 flags = (bp->b_flags & B_NOREUSE) != 0 ? VPR_NOREUSE : 0;
 if ((bp->b_flags & B_DIRECT) != 0) {
  flags |= VPR_TRYFREE;
  obj = bp->b_bufobj->bo_object;
  VM_OBJECT_WLOCK(obj);
 } else {
  obj = ((void*)0);
 }
 for (i = desiredpages; i < bp->b_npages; i++) {
  m = bp->b_pages[i];
  KASSERT(m != bogus_page, ("allocbuf: bogus page found"));
  bp->b_pages[i] = ((void*)0);
  if (obj != ((void*)0))
   vm_page_release_locked(m, flags);
  else
   vm_page_release(m, flags);
 }
 if (obj != ((void*)0))
  VM_OBJECT_WUNLOCK(obj);
 bp->b_npages = desiredpages;
}
