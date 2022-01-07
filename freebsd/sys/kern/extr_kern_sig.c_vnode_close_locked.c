
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct thread {int td_ucred; } ;


 int FWRITE ;
 int VOP_UNLOCK (struct vnode*,int ) ;
 int vn_close (struct vnode*,int ,int ,struct thread*) ;

__attribute__((used)) static void
vnode_close_locked(struct thread *td, struct vnode *vp)
{

 VOP_UNLOCK(vp, 0);
 vn_close(vp, FWRITE, td->td_ucred, td);
}
