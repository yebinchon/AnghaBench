
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u_int ;
struct vnode {scalar_t__ v_type; struct cdev* v_rdev; int v_mount; } ;
struct ufsmount {struct vnode* um_devvp; struct fs* um_fs; } ;
struct inode {scalar_t__ i_number; } ;
struct fs {int fs_ipg; int fs_ncg; int fs_unrefs; int fs_fmod; int fs_fsmnt; } ;
struct cg {int cg_unrefs; } ;
struct cdev {int dummy; } ;
struct buf {int dummy; } ;
typedef scalar_t__ ino_t ;


 int ACTIVECLEAR (struct fs*,int) ;
 int EIO ;
 int UFS_LOCK (struct ufsmount*) ;
 int UFS_UNLOCK (struct ufsmount*) ;
 scalar_t__ VCHR ;
 struct ufsmount* VFSTOUFS (int ) ;
 scalar_t__ VREG ;
 struct inode* VTOI (struct vnode*) ;
 int bdwrite (struct buf*) ;
 int devtoname (struct cdev*) ;
 int ffs_getcg (struct fs*,struct vnode*,int,int ,struct buf**,struct cg**) ;
 int ino_to_cg (struct fs*,scalar_t__) ;
 int panic (char*,int ,int ,int ) ;

__attribute__((used)) static int
ufs_gjournal_modref(struct vnode *vp, int count)
{
 struct cg *cgp;
 struct buf *bp;
 int error, cg;
 struct cdev *dev;
 struct inode *ip;
 struct ufsmount *ump;
 struct fs *fs;
 struct vnode *devvp;
 ino_t ino;

 ip = VTOI(vp);
 ump = VFSTOUFS(vp->v_mount);
 fs = ump->um_fs;
 devvp = ump->um_devvp;
 ino = ip->i_number;

 cg = ino_to_cg(fs, ino);
 if (devvp->v_type == VREG) {

  dev = VFSTOUFS(devvp->v_mount)->um_devvp->v_rdev;
 } else if (devvp->v_type == VCHR) {

  dev = devvp->v_rdev;
 } else {
  bp = ((void*)0);
  return (EIO);
 }
 if ((u_int)ino >= fs->fs_ipg * fs->fs_ncg)
  panic("ufs_gjournal_modref: range: dev = %s, ino = %lu, fs = %s",
      devtoname(dev), (u_long)ino, fs->fs_fsmnt);
 if ((error = ffs_getcg(fs, devvp, cg, 0, &bp, &cgp)) != 0)
  return (error);
 cgp->cg_unrefs += count;
 UFS_LOCK(ump);
 fs->fs_unrefs += count;
 fs->fs_fmod = 1;
 ACTIVECLEAR(fs, cg);
 UFS_UNLOCK(ump);
 bdwrite(bp);
 return (0);
}
