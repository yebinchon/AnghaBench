
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct file {int f_cred; struct vnode* f_vnode; } ;


 int AUDIT_ARG_VNODE1 (struct vnode*) ;
 int LK_EXCLUSIVE ;
 int LK_RETRY ;
 int VOP_POLL (struct vnode*,int,int ,struct thread*) ;
 int VOP_UNLOCK (struct vnode*,int ) ;
 int mac_vnode_check_poll (struct ucred*,int ,struct vnode*) ;
 int vn_lock (struct vnode*,int) ;

__attribute__((used)) static int
vn_poll(struct file *fp, int events, struct ucred *active_cred,
    struct thread *td)
{
 struct vnode *vp;
 int error;

 vp = fp->f_vnode;
 error = VOP_POLL(vp, events, fp->f_cred, td);
 return (error);
}
