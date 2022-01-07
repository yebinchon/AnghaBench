
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_ioctl_args {int a_command; int a_cred; scalar_t__ a_data; struct vnode* a_vp; } ;
struct vnode {int dummy; } ;
typedef int off_t ;


 int EBADF ;
 int ENOTTY ;


 int LK_SHARED ;
 int VOP_UNLOCK (struct vnode*,int ) ;
 int ufs_bmap_seekdata (struct vnode*,int *) ;
 int vn_bmap_seekhole (struct vnode*,int,int *,int ) ;
 int vn_lock (struct vnode*,int ) ;

__attribute__((used)) static int
ufs_ioctl(struct vop_ioctl_args *ap)
{
 struct vnode *vp;
 int error;

 vp = ap->a_vp;
 switch (ap->a_command) {
 case 129:
  error = vn_lock(vp, LK_SHARED);
  if (error == 0) {
   error = ufs_bmap_seekdata(vp, (off_t *)ap->a_data);
   VOP_UNLOCK(vp, 0);
  } else
   error = EBADF;
  return (error);
 case 128:
  return (vn_bmap_seekhole(vp, ap->a_command, (off_t *)ap->a_data,
      ap->a_cred));
 default:
  return (ENOTTY);
 }
}
