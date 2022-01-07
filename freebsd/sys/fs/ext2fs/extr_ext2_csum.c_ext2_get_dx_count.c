
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_e2fs; } ;
struct ext2fs_htree_root_info {int h_info_len; scalar_t__ h_reserved1; } ;
struct ext2fs_htree_count {int dummy; } ;
struct ext2fs_direct_2 {int e2d_reclen; } ;


 int EXT2_BLOCK_SIZE (int ) ;

__attribute__((used)) static struct ext2fs_htree_count *
ext2_get_dx_count(struct inode *ip, struct ext2fs_direct_2 *ep, int *offset)
{
 struct ext2fs_direct_2 *dp;
 struct ext2fs_htree_root_info *root;
 int count_offset;

 if (ep->e2d_reclen == EXT2_BLOCK_SIZE(ip->i_e2fs))
  count_offset = 8;
 else if (ep->e2d_reclen == 12) {
  dp = (struct ext2fs_direct_2 *)(((char *)ep) + 12);
  if (dp->e2d_reclen != EXT2_BLOCK_SIZE(ip->i_e2fs) - 12)
   return (((void*)0));

  root = (struct ext2fs_htree_root_info *)(((char *)dp + 12));
  if (root->h_reserved1 ||
      root->h_info_len != sizeof(struct ext2fs_htree_root_info))
   return (((void*)0));

  count_offset = 32;
 } else
  return (((void*)0));

 if (offset)
  *offset = count_offset;

 return ((struct ext2fs_htree_count *)(((char *)ep) + count_offset));
}
