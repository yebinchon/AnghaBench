
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct buf {int b_flags; int b_offset; int b_npages; scalar_t__ b_resid; TYPE_1__** b_pages; scalar_t__ b_bufsize; int b_ioflags; } ;
struct TYPE_4__ {int valid; } ;


 int BIO_ERROR ;
 int B_INVAL ;
 int B_MALLOC ;
 int B_VMIO ;
 int DEV_BSIZE ;
 int PAGE_MASK ;
 int PAGE_SIZE ;
 TYPE_1__* bogus_page ;
 int clrbuf (struct buf*) ;
 int imin (int,scalar_t__) ;
 int pmap_zero_page_area (TYPE_1__*,int,int) ;
 int roundup2 (int,int) ;
 int vfs_busy_pages_acquire (struct buf*) ;
 int vfs_busy_pages_release (struct buf*) ;
 int vm_page_set_valid_range (TYPE_1__*,int,int ) ;

void
vfs_bio_clrbuf(struct buf *bp)
{
 int i, j, mask, sa, ea, slide;

 if ((bp->b_flags & (B_VMIO | B_MALLOC)) != B_VMIO) {
  clrbuf(bp);
  return;
 }
 bp->b_flags &= ~B_INVAL;
 bp->b_ioflags &= ~BIO_ERROR;
 vfs_busy_pages_acquire(bp);
 sa = bp->b_offset & PAGE_MASK;
 slide = 0;
 for (i = 0; i < bp->b_npages; i++, sa = 0) {
  slide = imin(slide + PAGE_SIZE, bp->b_offset + bp->b_bufsize);
  ea = slide & PAGE_MASK;
  if (ea == 0)
   ea = PAGE_SIZE;
  if (bp->b_pages[i] == bogus_page)
   continue;
  j = sa / DEV_BSIZE;
  mask = ((1 << ((ea - sa) / DEV_BSIZE)) - 1) << j;
  if ((bp->b_pages[i]->valid & mask) == mask)
   continue;
  if ((bp->b_pages[i]->valid & mask) == 0)
   pmap_zero_page_area(bp->b_pages[i], sa, ea - sa);
  else {
   for (; sa < ea; sa += DEV_BSIZE, j++) {
    if ((bp->b_pages[i]->valid & (1 << j)) == 0) {
     pmap_zero_page_area(bp->b_pages[i],
         sa, DEV_BSIZE);
    }
   }
  }
  vm_page_set_valid_range(bp->b_pages[i], j * DEV_BSIZE,
      roundup2(ea - sa, DEV_BSIZE));
 }
 vfs_busy_pages_release(bp);
 bp->b_resid = 0;
}
