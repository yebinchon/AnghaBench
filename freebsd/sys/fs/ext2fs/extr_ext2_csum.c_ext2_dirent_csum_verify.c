
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct inode {int dummy; } ;
struct ext2fs_direct_tail {scalar_t__ e2dt_checksum; } ;
struct ext2fs_direct_2 {int dummy; } ;


 int EIO ;
 scalar_t__ ext2_dirent_csum (struct inode*,struct ext2fs_direct_2*,int) ;
 struct ext2fs_direct_tail* ext2_dirent_get_tail (struct inode*,struct ext2fs_direct_2*) ;

int
ext2_dirent_csum_verify(struct inode *ip, struct ext2fs_direct_2 *ep)
{
 uint32_t calculated;
 struct ext2fs_direct_tail *tp;

 tp = ext2_dirent_get_tail(ip, ep);
 if (tp == ((void*)0))
  return (0);

 calculated = ext2_dirent_csum(ip, ep, (char *)tp - (char *)ep);
 if (calculated != tp->e2dt_checksum)
  return (EIO);

 return (0);
}
