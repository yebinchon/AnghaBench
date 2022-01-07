
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct inode {int i_flag; int i_mode; int i_e2fs; int i_number; scalar_t__ i_offset; } ;
struct ext2fs_direct_2 {int e2d_type; int e2d_ino; } ;
struct componentname {int dummy; } ;
struct buf {scalar_t__ b_data; } ;
typedef int off_t ;


 int DTTOFT (int ) ;
 int EXT2F_INCOMPAT_FTYPE ;
 int EXT2_FT_UNKNOWN ;
 scalar_t__ EXT2_HAS_INCOMPAT_FEATURE (int ,int ) ;
 int IFTODT (int ) ;
 int IN_CHANGE ;
 int IN_UPDATE ;
 struct vnode* ITOV (struct inode*) ;
 int bwrite (struct buf*) ;
 int ext2_blkatoff (struct vnode*,int ,char**,struct buf**) ;
 int ext2_dirent_csum_set (struct inode*,struct ext2fs_direct_2*) ;

int
ext2_dirrewrite(struct inode *dp, struct inode *ip, struct componentname *cnp)
{
 struct buf *bp;
 struct ext2fs_direct_2 *ep;
 struct vnode *vdp = ITOV(dp);
 int error;

 if ((error = ext2_blkatoff(vdp, (off_t)dp->i_offset, (char **)&ep,
     &bp)) != 0)
  return (error);
 ep->e2d_ino = ip->i_number;
 if (EXT2_HAS_INCOMPAT_FEATURE(ip->i_e2fs,
     EXT2F_INCOMPAT_FTYPE))
  ep->e2d_type = DTTOFT(IFTODT(ip->i_mode));
 else
  ep->e2d_type = EXT2_FT_UNKNOWN;
 ext2_dirent_csum_set(dp, (struct ext2fs_direct_2 *)bp->b_data);
 error = bwrite(bp);
 dp->i_flag |= IN_CHANGE | IN_UPDATE;
 return (error);
}
