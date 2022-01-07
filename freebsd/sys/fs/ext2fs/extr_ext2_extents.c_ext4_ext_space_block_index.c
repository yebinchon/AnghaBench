
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m_ext2fs {int e2fs_bsize; } ;
struct inode {struct m_ext2fs* i_e2fs; } ;
struct ext4_extent_index {int dummy; } ;
struct ext4_extent_header {int dummy; } ;



__attribute__((used)) static inline int
ext4_ext_space_block_index(struct inode *ip)
{
 struct m_ext2fs *fs;
 int size;

 fs = ip->i_e2fs;

 size = (fs->e2fs_bsize - sizeof(struct ext4_extent_header)) /
     sizeof(struct ext4_extent_index);

 return (size);
}
