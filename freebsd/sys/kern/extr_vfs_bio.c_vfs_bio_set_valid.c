
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;
struct buf {int b_flags; int b_offset; int b_npages; int * b_pages; } ;


 int B_VMIO ;
 int PAGE_MASK ;
 int PAGE_SIZE ;
 int vfs_busy_pages_acquire (struct buf*) ;
 int vfs_busy_pages_release (struct buf*) ;
 int vm_page_set_valid_range (int ,int,int) ;

void
vfs_bio_set_valid(struct buf *bp, int base, int size)
{
 int i, n;
 vm_page_t m;

 if (!(bp->b_flags & B_VMIO))
  return;






 base += (bp->b_offset & PAGE_MASK);
 n = PAGE_SIZE - (base & PAGE_MASK);







 vfs_busy_pages_acquire(bp);
 for (i = base / PAGE_SIZE; size > 0 && i < bp->b_npages; ++i) {
  m = bp->b_pages[i];
  if (n > size)
   n = size;
  vm_page_set_valid_range(m, base & PAGE_MASK, n);
  base += n;
  size -= n;
  n = PAGE_SIZE;
 }
 vfs_busy_pages_release(bp);
}
