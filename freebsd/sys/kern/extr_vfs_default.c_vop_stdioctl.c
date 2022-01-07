
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_ioctl_args {int a_command; int * a_data; int a_cred; struct vnode* a_vp; } ;
struct vnode {int v_type; } ;
struct vattr {int va_size; } ;
typedef int off_t ;


 int EBADF ;
 int ENOTTY ;
 int ENXIO ;


 int LK_SHARED ;
 int VOP_GETATTR (struct vnode*,struct vattr*,int ) ;
 int VOP_UNLOCK (struct vnode*,int ) ;
 int VREG ;
 int vn_lock (struct vnode*,int ) ;

__attribute__((used)) static int
vop_stdioctl(struct vop_ioctl_args *ap)
{
 struct vnode *vp;
 struct vattr va;
 off_t *offp;
 int error;

 switch (ap->a_command) {
 case 129:
 case 128:
  vp = ap->a_vp;
  error = vn_lock(vp, LK_SHARED);
  if (error != 0)
   return (EBADF);
  if (vp->v_type == VREG)
   error = VOP_GETATTR(vp, &va, ap->a_cred);
  else
   error = ENOTTY;
  if (error == 0) {
   offp = ap->a_data;
   if (*offp < 0 || *offp >= va.va_size)
    error = ENXIO;
   else if (ap->a_command == 128)
    *offp = va.va_size;
  }
  VOP_UNLOCK(vp, 0);
  break;
 default:
  error = ENOTTY;
  break;
 }
 return (error);
}
