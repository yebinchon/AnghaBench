
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_facl; int i_e2fs; } ;
struct ext2fs_extattr_header {int h_checksum; } ;
struct buf {scalar_t__ b_data; } ;


 int EXT2F_ROCOMPAT_METADATA_CKSUM ;
 int EXT2_HAS_RO_COMPAT_FEATURE (int ,int ) ;
 int ext2_extattr_blk_csum (struct inode*,int ,struct ext2fs_extattr_header*) ;

void
ext2_extattr_blk_csum_set(struct inode *ip, struct buf *bp)
{
 struct ext2fs_extattr_header *header;

 if (!EXT2_HAS_RO_COMPAT_FEATURE(ip->i_e2fs, EXT2F_ROCOMPAT_METADATA_CKSUM))
  return;

 header = (struct ext2fs_extattr_header *)bp->b_data;
 header->h_checksum = ext2_extattr_blk_csum(ip, ip->i_facl, header);
}
