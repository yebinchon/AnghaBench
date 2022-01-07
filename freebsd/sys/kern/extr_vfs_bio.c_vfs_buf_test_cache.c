
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;
typedef int vm_ooffset_t ;
typedef int vm_offset_t ;
struct buf {int b_flags; } ;


 int B_CACHE ;
 int PAGE_MASK ;
 scalar_t__ vm_page_is_valid (int ,int,int) ;

__attribute__((used)) static __inline void
vfs_buf_test_cache(struct buf *bp, vm_ooffset_t foff, vm_offset_t off,
    vm_offset_t size, vm_page_t m)
{






 if (bp->b_flags & B_CACHE) {
  int base = (foff + off) & PAGE_MASK;
  if (vm_page_is_valid(m, base, size) == 0)
   bp->b_flags &= ~B_CACHE;
 }
}
