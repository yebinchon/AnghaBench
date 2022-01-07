
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct m_ext2fs {int e2fs_bsize; } ;
struct inode {struct m_ext2fs* i_e2fs; } ;
struct ext2fs_htree_tail {int dummy; } ;
struct ext2fs_htree_entry {int dummy; } ;


 int EXT2F_ROCOMPAT_METADATA_CKSUM ;
 int EXT2_DIR_REC_LEN (int ) ;
 scalar_t__ EXT2_HAS_RO_COMPAT_FEATURE (struct m_ext2fs*,int ) ;

__attribute__((used)) static uint32_t
ext2_htree_node_limit(struct inode *ip)
{
 struct m_ext2fs *fs;
 uint32_t space;

 fs = ip->i_e2fs;
 space = fs->e2fs_bsize - EXT2_DIR_REC_LEN(0);

 if (EXT2_HAS_RO_COMPAT_FEATURE(fs, EXT2F_ROCOMPAT_METADATA_CKSUM))
  space -= sizeof(struct ext2fs_htree_tail);

 return (space / sizeof(struct ext2fs_htree_entry));
}
