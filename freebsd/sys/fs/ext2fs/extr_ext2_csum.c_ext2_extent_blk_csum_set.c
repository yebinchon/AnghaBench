
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m_ext2fs {int dummy; } ;
struct inode {struct m_ext2fs* i_e2fs; } ;
struct ext4_extent_tail {int et_checksum; } ;
struct ext4_extent_header {int dummy; } ;


 int EXT2F_ROCOMPAT_METADATA_CKSUM ;
 int EXT2_HAS_RO_COMPAT_FEATURE (struct m_ext2fs*,int ) ;
 int EXT4_EXTENT_TAIL_OFFSET (struct ext4_extent_header*) ;
 int ext2_extent_blk_csum (struct inode*,struct ext4_extent_header*) ;

void
ext2_extent_blk_csum_set(struct inode *ip, void *data)
{
 struct m_ext2fs *fs;
 struct ext4_extent_header *ehp;
 struct ext4_extent_tail *etp;

 fs = ip->i_e2fs;

 if (!EXT2_HAS_RO_COMPAT_FEATURE(fs, EXT2F_ROCOMPAT_METADATA_CKSUM))
  return;

 ehp = (struct ext4_extent_header *)data;
 etp = (struct ext4_extent_tail *)(((char *)data) +
     EXT4_EXTENT_TAIL_OFFSET(ehp));

 etp->et_checksum = ext2_extent_blk_csum(ip,
     (struct ext4_extent_header *)data);
}
