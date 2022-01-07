
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
struct buf {int b_npages; scalar_t__ b_data; int b_pages; } ;


 scalar_t__ buf_mapped (struct buf*) ;
 int pmap_qremove (int ,int) ;
 int trunc_page (int ) ;
 scalar_t__ unmapped_buf ;
 int vm_page_unhold_pages (int ,int) ;

void
vunmapbuf(struct buf *bp)
{
 int npages;

 npages = bp->b_npages;
 if (buf_mapped(bp))
  pmap_qremove(trunc_page((vm_offset_t)bp->b_data), npages);
 vm_page_unhold_pages(bp->b_pages, npages);

 bp->b_data = unmapped_buf;
}
