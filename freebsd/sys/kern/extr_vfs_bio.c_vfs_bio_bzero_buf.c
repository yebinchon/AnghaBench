
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;
struct buf {int b_npages; int * b_pages; scalar_t__ b_data; } ;


 int BUF_CHECK_MAPPED (struct buf*) ;
 int BUF_CHECK_UNMAPPED (struct buf*) ;
 int PAGE_MASK ;
 int PAGE_SIZE ;
 scalar_t__ buf_mapped (struct buf*) ;
 int bzero (scalar_t__,int) ;
 int pmap_zero_page_area (int ,int,int) ;

void
vfs_bio_bzero_buf(struct buf *bp, int base, int size)
{
 vm_page_t m;
 int i, n;

 if (buf_mapped(bp)) {
  BUF_CHECK_MAPPED(bp);
  bzero(bp->b_data + base, size);
 } else {
  BUF_CHECK_UNMAPPED(bp);
  n = PAGE_SIZE - (base & PAGE_MASK);
  for (i = base / PAGE_SIZE; size > 0 && i < bp->b_npages; ++i) {
   m = bp->b_pages[i];
   if (n > size)
    n = size;
   pmap_zero_page_area(m, base & PAGE_MASK, n);
   base += n;
   size -= n;
   n = PAGE_SIZE;
  }
 }
}
