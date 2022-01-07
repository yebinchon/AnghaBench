
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vop_access_args {int a_accmode; int a_cred; struct vnode* a_vp; } ;
struct vnode {int v_type; TYPE_1__* v_mount; } ;
struct inode {int i_flags; int i_gid; int i_uid; int i_mode; } ;
typedef int accmode_t ;
struct TYPE_2__ {int mnt_flag; } ;


 int EOPNOTSUPP ;
 int EPERM ;
 int EROFS ;
 int MNT_RDONLY ;
 int SF_IMMUTABLE ;
 int SF_SNAPSHOT ;
 int VBLK ;
 int VCHR ;



 struct inode* VTOI (struct vnode*) ;
 int VWRITE ;
 int vaccess (int,int ,int ,int ,int,int ,int *) ;

__attribute__((used)) static int
ext2_access(struct vop_access_args *ap)
{
 struct vnode *vp = ap->a_vp;
 struct inode *ip = VTOI(vp);
 accmode_t accmode = ap->a_accmode;
 int error;

 if (vp->v_type == VBLK || vp->v_type == VCHR)
  return (EOPNOTSUPP);






 if (accmode & VWRITE) {
  switch (vp->v_type) {
  case 130:
  case 129:
  case 128:
   if (vp->v_mount->mnt_flag & MNT_RDONLY)
    return (EROFS);
   break;
  default:
   break;
  }
 }


 if ((accmode & VWRITE) && (ip->i_flags & (SF_IMMUTABLE | SF_SNAPSHOT)))
  return (EPERM);

 error = vaccess(vp->v_type, ip->i_mode, ip->i_uid, ip->i_gid,
     ap->a_accmode, ap->a_cred, ((void*)0));
 return (error);
}
