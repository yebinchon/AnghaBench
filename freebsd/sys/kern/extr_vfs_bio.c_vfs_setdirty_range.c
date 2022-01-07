
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* vm_offset_t ;
struct buf {int b_npages; int b_offset; void* b_bcount; void* b_dirtyoff; void* b_dirtyend; TYPE_1__** b_pages; } ;
struct TYPE_2__ {scalar_t__ dirty; } ;


 int PAGE_MASK ;
 int PAGE_SHIFT ;
 int vm_page_test_dirty (TYPE_1__*) ;

__attribute__((used)) static void
vfs_setdirty_range(struct buf *bp)
{
 vm_offset_t boffset;
 vm_offset_t eoffset;
 int i;





 for (i = 0; i < bp->b_npages; i++)
  vm_page_test_dirty(bp->b_pages[i]);






 for (i = 0; i < bp->b_npages; i++) {
  if (bp->b_pages[i]->dirty)
   break;
 }
 boffset = (i << PAGE_SHIFT) - (bp->b_offset & PAGE_MASK);

 for (i = bp->b_npages - 1; i >= 0; --i) {
  if (bp->b_pages[i]->dirty) {
   break;
  }
 }
 eoffset = ((i + 1) << PAGE_SHIFT) - (bp->b_offset & PAGE_MASK);





 if (eoffset > bp->b_bcount)
  eoffset = bp->b_bcount;






 if (boffset < eoffset) {
  if (bp->b_dirtyoff > boffset)
   bp->b_dirtyoff = boffset;
  if (bp->b_dirtyend < eoffset)
   bp->b_dirtyend = eoffset;
 }
}
