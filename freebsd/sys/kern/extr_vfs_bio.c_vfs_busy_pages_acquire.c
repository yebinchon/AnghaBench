
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buf {int b_npages; int * b_pages; } ;


 int VM_ALLOC_SBUSY ;
 int vm_page_busy_acquire (int ,int ) ;

void
vfs_busy_pages_acquire(struct buf *bp)
{
 int i;

 for (i = 0; i < bp->b_npages; i++)
  vm_page_busy_acquire(bp->b_pages[i], VM_ALLOC_SBUSY);
}
