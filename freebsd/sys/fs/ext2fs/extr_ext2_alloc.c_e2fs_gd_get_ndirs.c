
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ext2_gd {int ext2bgd_ndirs; scalar_t__ ext4bgd_ndirs_hi; } ;



uint32_t
e2fs_gd_get_ndirs(struct ext2_gd *gd)
{

 return (((uint32_t)(gd->ext4bgd_ndirs_hi) << 16) |
     gd->ext2bgd_ndirs);
}
