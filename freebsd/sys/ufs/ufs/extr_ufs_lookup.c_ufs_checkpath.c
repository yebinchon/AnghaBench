
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uintmax_t ;
struct vnode {struct mount* v_mount; } ;
struct ucred {int dummy; } ;
struct mount {int dummy; } ;
struct inode {scalar_t__ i_number; } ;
typedef scalar_t__ ino_t ;
struct TYPE_2__ {scalar_t__ i_number; } ;


 int EEXIST ;
 int EINVAL ;
 int ENOTDIR ;
 struct vnode* ITOV (struct inode*) ;
 int KASSERT (int,char*) ;
 int LK_NOWAIT ;
 int LK_SHARED ;
 scalar_t__ UFS_ROOTINO ;
 int VFS_VGET (struct mount*,scalar_t__,int,struct vnode**) ;
 TYPE_1__* VTOI (struct vnode*) ;
 int panic (char*) ;
 int ufs_dir_dd_ino (struct vnode*,struct ucred*,scalar_t__*,struct vnode**) ;
 int vput (struct vnode*) ;

int
ufs_checkpath(ino_t source_ino, ino_t parent_ino, struct inode *target, struct ucred *cred, ino_t *wait_ino)
{
 struct mount *mp;
 struct vnode *tvp, *vp, *vp1;
 int error;
 ino_t dd_ino;

 vp = tvp = ITOV(target);
 mp = vp->v_mount;
 *wait_ino = 0;
 if (target->i_number == source_ino)
  return (EEXIST);
 if (target->i_number == parent_ino)
  return (0);
 if (target->i_number == UFS_ROOTINO)
  return (0);
 for (;;) {
  error = ufs_dir_dd_ino(vp, cred, &dd_ino, &vp1);
  if (error != 0)
   break;
  if (dd_ino == source_ino) {
   error = EINVAL;
   break;
  }
  if (dd_ino == UFS_ROOTINO)
   break;
  if (dd_ino == parent_ino)
   break;
  if (vp1 == ((void*)0)) {
   error = VFS_VGET(mp, dd_ino, LK_SHARED | LK_NOWAIT,
       &vp1);
   if (error != 0) {
    *wait_ino = dd_ino;
    break;
   }
  }
  KASSERT(dd_ino == VTOI(vp1)->i_number,
      ("directory %ju reparented\n",
      (uintmax_t)VTOI(vp1)->i_number));
  if (vp != tvp)
   vput(vp);
  vp = vp1;
 }

 if (error == ENOTDIR)
  panic("checkpath: .. not a directory\n");
 if (vp1 != ((void*)0))
  vput(vp1);
 if (vp != tvp)
  vput(vp);
 return (error);
}
