
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;
typedef int vm_ooffset_t ;
typedef int vm_offset_t ;
struct buf {int b_offset; int b_bcount; } ;
typedef int off_t ;


 int PAGE_MASK ;
 int PAGE_SIZE ;
 int vm_page_set_validclean (int ,int ,int ) ;

__attribute__((used)) static void
vfs_page_set_validclean(struct buf *bp, vm_ooffset_t off, vm_page_t m)
{
 vm_ooffset_t soff, eoff;







 soff = off;
 eoff = (off + PAGE_SIZE) & ~(off_t)PAGE_MASK;
 if (eoff > bp->b_offset + bp->b_bcount)
  eoff = bp->b_offset + bp->b_bcount;





 if (eoff > soff) {
  vm_page_set_validclean(
      m,
     (vm_offset_t) (soff & PAGE_MASK),
     (vm_offset_t) (eoff - soff)
  );
 }
}
