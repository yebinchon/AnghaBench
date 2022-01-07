
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;
typedef int vm_ooffset_t ;
struct buf {int b_offset; int b_bcount; } ;


 int PAGE_MASK ;
 int PAGE_SIZE ;
 int vm_page_set_valid_range (int ,int,int) ;

__attribute__((used)) static void
vfs_page_set_valid(struct buf *bp, vm_ooffset_t off, vm_page_t m)
{
 vm_ooffset_t eoff;







 eoff = (off + PAGE_SIZE) & ~(vm_ooffset_t)PAGE_MASK;
 if (eoff > bp->b_offset + bp->b_bcount)
  eoff = bp->b_offset + bp->b_bcount;





 if (eoff > off)
  vm_page_set_valid_range(m, off & PAGE_MASK, eoff - off);
}
