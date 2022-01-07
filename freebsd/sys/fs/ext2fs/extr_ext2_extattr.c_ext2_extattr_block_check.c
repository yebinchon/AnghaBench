
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct ext2fs_extattr_header {int dummy; } ;
struct buf {scalar_t__ b_bufsize; scalar_t__ b_data; } ;


 int EXT2_IFIRST (struct ext2fs_extattr_header*) ;
 int ext2_extattr_blk_csum_verify (struct inode*,struct buf*) ;
 int ext2_extattr_check (int ,scalar_t__) ;

__attribute__((used)) static int
ext2_extattr_block_check(struct inode *ip, struct buf *bp)
{
 struct ext2fs_extattr_header *header;
 int error;

 header = (struct ext2fs_extattr_header *)bp->b_data;

 error = ext2_extattr_check(EXT2_IFIRST(header),
     bp->b_data + bp->b_bufsize);
 if (error)
  return (error);

 return (ext2_extattr_blk_csum_verify(ip, bp));
}
