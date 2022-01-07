
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m_ext2fs {int dummy; } ;
struct inode {struct m_ext2fs* i_e2fs; } ;
struct ext2fs_direct_tail {int e2dt_checksum; } ;
struct ext2fs_direct_2 {int dummy; } ;


 int EXT2F_ROCOMPAT_METADATA_CKSUM ;
 int EXT2_HAS_RO_COMPAT_FEATURE (struct m_ext2fs*,int ) ;
 int ext2_dirent_csum (struct inode*,struct ext2fs_direct_2*,int) ;
 struct ext2fs_direct_tail* ext2_dirent_get_tail (struct inode*,struct ext2fs_direct_2*) ;

void
ext2_dirent_csum_set(struct inode *ip, struct ext2fs_direct_2 *ep)
{
 struct m_ext2fs *fs;
 struct ext2fs_direct_tail *tp;

 fs = ip->i_e2fs;

 if (!EXT2_HAS_RO_COMPAT_FEATURE(fs, EXT2F_ROCOMPAT_METADATA_CKSUM))
  return;

 tp = ext2_dirent_get_tail(ip, ep);
 if (tp == ((void*)0))
  return;

 tp->e2dt_checksum =
     ext2_dirent_csum(ip, ep, (char *)tp - (char *)ep);
}
