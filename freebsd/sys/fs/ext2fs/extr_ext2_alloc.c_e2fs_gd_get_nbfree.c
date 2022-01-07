
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ext2_gd {int ext2bgd_nbfree; scalar_t__ ext4bgd_nbfree_hi; } ;



__attribute__((used)) static uint32_t
e2fs_gd_get_nbfree(struct ext2_gd *gd)
{

 return (((uint32_t)(gd->ext4bgd_nbfree_hi) << 16) |
     gd->ext2bgd_nbfree);
}
