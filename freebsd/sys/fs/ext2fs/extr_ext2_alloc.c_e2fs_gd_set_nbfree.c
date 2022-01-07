
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ext2_gd {int ext2bgd_nbfree; int ext4bgd_nbfree_hi; } ;



__attribute__((used)) static void
e2fs_gd_set_nbfree(struct ext2_gd *gd, uint32_t val)
{

 gd->ext2bgd_nbfree = val & 0xffff;
 gd->ext4bgd_nbfree_hi = val >> 16;
}
