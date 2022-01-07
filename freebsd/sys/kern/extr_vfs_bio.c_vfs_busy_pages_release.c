
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buf {int b_npages; int * b_pages; } ;


 int vm_page_sunbusy (int ) ;

void
vfs_busy_pages_release(struct buf *bp)
{
 int i;

 for (i = 0; i < bp->b_npages; i++)
  vm_page_sunbusy(bp->b_pages[i]);
}
