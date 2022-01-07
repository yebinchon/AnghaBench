
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct vnode {int v_type; } ;
struct vattr {int va_size; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct fiobmap2_arg {int runb; int runp; int bn; } ;
struct file {int f_offset; int f_flag; int f_cred; struct vnode* f_vnode; } ;


 int ENOTTY ;




 int LK_RETRY ;
 int LK_SHARED ;


 int VOP_BMAP (struct vnode*,int ,int *,int *,int *,int *) ;
 int VOP_GETATTR (struct vnode*,struct vattr*,struct ucred*) ;
 int VOP_IOCTL (struct vnode*,int ,void*,int ,struct ucred*,struct thread*) ;
 int VOP_UNLOCK (struct vnode*,int ) ;

 int mac_vnode_check_read (struct ucred*,int ,struct vnode*) ;
 int vn_lock (struct vnode*,int) ;

__attribute__((used)) static int
vn_ioctl(struct file *fp, u_long com, void *data, struct ucred *active_cred,
    struct thread *td)
{
 struct vattr vattr;
 struct vnode *vp;
 struct fiobmap2_arg *bmarg;
 int error;

 vp = fp->f_vnode;
 switch (vp->v_type) {
 case 129:
 case 128:
  switch (com) {
  case 131:
   vn_lock(vp, LK_SHARED | LK_RETRY);
   error = VOP_GETATTR(vp, &vattr, active_cred);
   VOP_UNLOCK(vp, 0);
   if (error == 0)
    *(int *)data = vattr.va_size - fp->f_offset;
   return (error);
  case 133:
   bmarg = (struct fiobmap2_arg *)data;
   vn_lock(vp, LK_SHARED | LK_RETRY);





    error = VOP_BMAP(vp, bmarg->bn, ((void*)0),
        &bmarg->bn, &bmarg->runp, &bmarg->runb);
   VOP_UNLOCK(vp, 0);
   return (error);
  case 132:
  case 134:
   return (0);
  default:
   return (VOP_IOCTL(vp, com, data, fp->f_flag,
       active_cred, td));
  }
  break;
 case 130:
  return (VOP_IOCTL(vp, com, data, fp->f_flag,
      active_cred, td));
 default:
  return (ENOTTY);
 }
}
