
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_page_t ;
typedef int vm_ooffset_t ;
typedef int vm_offset_t ;
typedef int vm_object_t ;
struct buf {int b_flags; int b_offset; int b_npages; scalar_t__ b_bufsize; int * b_pages; scalar_t__ b_data; TYPE_1__* b_bufobj; } ;
typedef int off_t ;
struct TYPE_2__ {int bo_object; } ;


 int BUF_CHECK_MAPPED (struct buf*) ;
 int B_CACHE ;
 int B_CLUSTER ;
 int B_VMIO ;
 int KASSERT (int,char*) ;
 scalar_t__ NOOFFSET ;
 scalar_t__ PAGE_MASK ;
 int PAGE_SIZE ;
 int bogus_page ;
 scalar_t__ buf_mapped (struct buf*) ;
 int pmap_qenter (int ,int *,int) ;
 int pmap_remove_write (int ) ;
 int trunc_page (int ) ;
 int vfs_busy_pages_acquire (struct buf*) ;
 int vfs_page_set_validclean (struct buf*,int,int ) ;
 int vfs_setdirty_range (struct buf*) ;
 int vm_object_pip_add (int ,int) ;
 scalar_t__ vm_page_all_valid (int ) ;
 int vm_page_assert_sbusied (int ) ;

void
vfs_busy_pages(struct buf *bp, int clear_modify)
{
 vm_object_t obj;
 vm_ooffset_t foff;
 vm_page_t m;
 int i;
 bool bogus;

 if (!(bp->b_flags & B_VMIO))
  return;

 obj = bp->b_bufobj->bo_object;
 foff = bp->b_offset;
 KASSERT(bp->b_offset != NOOFFSET,
     ("vfs_busy_pages: no buffer offset"));
 if ((bp->b_flags & B_CLUSTER) == 0) {
  vm_object_pip_add(obj, bp->b_npages);
  vfs_busy_pages_acquire(bp);
 }
 if (bp->b_bufsize != 0)
  vfs_setdirty_range(bp);
 bogus = 0;
 for (i = 0; i < bp->b_npages; i++) {
  m = bp->b_pages[i];
  vm_page_assert_sbusied(m);
  if (clear_modify) {
   pmap_remove_write(m);
   vfs_page_set_validclean(bp, foff, m);
  } else if (vm_page_all_valid(m) &&
      (bp->b_flags & B_CACHE) == 0) {
   bp->b_pages[i] = bogus_page;
   bogus = 1;
  }
  foff = (foff + PAGE_SIZE) & ~(off_t)PAGE_MASK;
 }
 if (bogus && buf_mapped(bp)) {
  BUF_CHECK_MAPPED(bp);
  pmap_qenter(trunc_page((vm_offset_t)bp->b_data),
      bp->b_pages, bp->b_npages);
 }
}
