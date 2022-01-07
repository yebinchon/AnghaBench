
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ext2_gd {int ext2bgd_b_bitmap; scalar_t__ ext4bgd_b_bitmap_hi; } ;



uint64_t
e2fs_gd_get_b_bitmap(struct ext2_gd *gd)
{

 return (((uint64_t)(gd->ext4bgd_b_bitmap_hi) << 32) |
     gd->ext2bgd_b_bitmap);
}
