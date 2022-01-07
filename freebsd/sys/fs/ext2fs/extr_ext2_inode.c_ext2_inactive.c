
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_inactive_args {struct thread* a_td; struct vnode* a_vp; } ;
struct vnode {int dummy; } ;
struct thread {int dummy; } ;
struct inode {scalar_t__ i_mode; scalar_t__ i_nlink; int i_flag; int i_number; scalar_t__ i_rdev; } ;
typedef int off_t ;


 int IN_ACCESS ;
 int IN_CHANGE ;
 int IN_E4EXTENTS ;
 int IN_MODIFIED ;
 int IN_UPDATE ;
 int NOCRED ;
 struct inode* VTOI (struct vnode*) ;
 int ext2_extattr_free (struct inode*) ;
 int ext2_truncate (struct vnode*,int ,int ,int ,struct thread*) ;
 int ext2_update (struct vnode*,int ) ;
 int ext2_vfree (struct vnode*,int ,int) ;
 int vrecycle (struct vnode*) ;

int
ext2_inactive(struct vop_inactive_args *ap)
{
 struct vnode *vp = ap->a_vp;
 struct inode *ip = VTOI(vp);
 struct thread *td = ap->a_td;
 int mode, error = 0;




 if (ip->i_mode == 0)
  goto out;
 if (ip->i_nlink <= 0) {
  ext2_extattr_free(ip);
  error = ext2_truncate(vp, (off_t)0, 0, NOCRED, td);
  if (!(ip->i_flag & IN_E4EXTENTS))
   ip->i_rdev = 0;
  mode = ip->i_mode;
  ip->i_mode = 0;
  ip->i_flag |= IN_CHANGE | IN_UPDATE;
  ext2_vfree(vp, ip->i_number, mode);
 }
 if (ip->i_flag & (IN_ACCESS | IN_CHANGE | IN_MODIFIED | IN_UPDATE))
  ext2_update(vp, 0);
out:




 if (ip->i_mode == 0)
  vrecycle(vp);
 return (error);
}
