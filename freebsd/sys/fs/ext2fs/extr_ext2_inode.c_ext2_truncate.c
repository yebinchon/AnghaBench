
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct vnode {scalar_t__ v_type; TYPE_1__* v_mount; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct inode {scalar_t__ i_size; int i_flag; int i_shortlink; } ;
typedef scalar_t__ off_t ;
struct TYPE_2__ {scalar_t__ mnt_maxsymlinklen; } ;


 int ASSERT_VOP_LOCKED (struct vnode*,char*) ;
 int EINVAL ;
 int IN_CHANGE ;
 int IN_E4EXTENTS ;
 int IN_UPDATE ;
 scalar_t__ VLNK ;
 struct inode* VTOI (struct vnode*) ;
 int bzero (char*,int ) ;
 int ext2_ext_truncate (struct vnode*,scalar_t__,int,struct ucred*,struct thread*) ;
 int ext2_ind_truncate (struct vnode*,scalar_t__,int,struct ucred*,struct thread*) ;
 int ext2_update (struct vnode*,int) ;
 int panic (char*) ;

int
ext2_truncate(struct vnode *vp, off_t length, int flags, struct ucred *cred,
    struct thread *td)
{
 struct inode *ip;
 int error;

 ASSERT_VOP_LOCKED(vp, "ext2_truncate");

 if (length < 0)
  return (EINVAL);

 ip = VTOI(vp);
 if (vp->v_type == VLNK &&
     ip->i_size < vp->v_mount->mnt_maxsymlinklen) {




  bzero((char *)&ip->i_shortlink, (u_int)ip->i_size);
  ip->i_size = 0;
  ip->i_flag |= IN_CHANGE | IN_UPDATE;
  return (ext2_update(vp, 1));
 }
 if (ip->i_size == length) {
  ip->i_flag |= IN_CHANGE | IN_UPDATE;
  return (ext2_update(vp, 0));
 }

 if (ip->i_flag & IN_E4EXTENTS)
  error = ext2_ext_truncate(vp, length, flags, cred, td);
 else
  error = ext2_ind_truncate(vp, length, flags, cred, td);

 return (error);
}
