
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext4_extent {int e_start_lo; int e_start_hi; } ;
typedef int e4fs_daddr_t ;



__attribute__((used)) static inline void
ext4_ext_store_pblock(struct ext4_extent *ex, e4fs_daddr_t pb)
{

 ex->e_start_lo = pb & 0xffffffff;
 ex->e_start_hi = (pb >> 32) & 0xffff;
}
