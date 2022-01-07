
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
struct buf {int b_offset; void* b_data; int b_npages; int b_pages; } ;
typedef void* caddr_t ;


 int BUF_CHECK_MAPPED (struct buf*) ;
 int PAGE_MASK ;
 int pmap_qenter (int,int ,int ) ;
 scalar_t__ trunc_page (int) ;

__attribute__((used)) static void
bpmap_qenter(struct buf *bp)
{

 BUF_CHECK_MAPPED(bp);





 bp->b_data = (caddr_t)trunc_page((vm_offset_t)bp->b_data);
 pmap_qenter((vm_offset_t)bp->b_data, bp->b_pages, bp->b_npages);
 bp->b_data = (caddr_t)((vm_offset_t)bp->b_data |
     (vm_offset_t)(bp->b_offset & PAGE_MASK));
}
