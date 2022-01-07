
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext4_extent {scalar_t__ e_blk; scalar_t__ e_len; } ;


 scalar_t__ EXT4_MAX_LEN ;
 scalar_t__ ext4_ext_extent_pblock (struct ext4_extent*) ;

__attribute__((used)) static int inline
ext4_can_extents_be_merged(struct ext4_extent *ex1,
    struct ext4_extent *ex2)
{

 if (ex1->e_blk + ex1->e_len != ex2->e_blk)
  return (0);

 if (ex1->e_len + ex2->e_len > EXT4_MAX_LEN)
  return (0);

 if (ext4_ext_extent_pblock(ex1) + ex1->e_len ==
     ext4_ext_extent_pblock(ex2))
  return (1);

 return (0);
}
