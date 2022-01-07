
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct file {struct vnode* f_vnode; } ;
typedef int mode_t ;


 int AUDIT_ARG_VNODE1 (struct vnode*) ;
 int LK_RETRY ;
 int LK_SHARED ;
 int VOP_UNLOCK (struct vnode*,int ) ;
 int setfmode (struct thread*,struct ucred*,struct vnode*,int ) ;
 int vn_lock (struct vnode*,int) ;

int
vn_chmod(struct file *fp, mode_t mode, struct ucred *active_cred,
    struct thread *td)
{
 struct vnode *vp;

 vp = fp->f_vnode;





 return (setfmode(td, active_cred, vp, mode));
}
