
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_advlock_args {int a_flags; int a_fl; int a_op; int a_id; struct vnode* a_vp; } ;
struct vnode {int dummy; } ;
struct unionfs_node_status {scalar_t__ uns_lower_opencnt; int uns_lower_openmode; int uns_upper_opencnt; } ;
struct unionfs_node {int un_lowervp; struct vnode* un_uppervp; } ;
struct thread {int td_ucred; } ;


 int KASSERT_UNIONFS_VNODE (struct vnode*) ;
 int LK_EXCLUSIVE ;
 int LK_RELEASE ;
 int LK_RETRY ;
 struct vnode* NULLVP ;
 int UNIONFS_INTERNAL_DEBUG (char*,...) ;
 int VOP_ADVLOCK (struct vnode*,int ,int ,int ,int ) ;
 int VOP_CLOSE (int ,int ,int ,struct thread*) ;
 int VOP_OPEN (struct vnode*,int ,int ,struct thread*,int *) ;
 int VOP_UNLOCK (struct vnode*,int ) ;
 struct unionfs_node* VTOUNIONFS (struct vnode*) ;
 struct thread* curthread ;
 int unionfs_copyfile (struct unionfs_node*,int,int ,struct thread*) ;
 int unionfs_get_node_status (struct unionfs_node*,struct thread*,struct unionfs_node_status**) ;
 int unionfs_tryrem_node_status (struct unionfs_node*,struct unionfs_node_status*) ;
 int vn_lock (struct vnode*,int) ;

__attribute__((used)) static int
unionfs_advlock(struct vop_advlock_args *ap)
{
 int error;
 struct unionfs_node *unp;
 struct unionfs_node_status *unsp;
 struct vnode *vp;
 struct vnode *uvp;
 struct thread *td;

 UNIONFS_INTERNAL_DEBUG("unionfs_advlock: enter\n");

 KASSERT_UNIONFS_VNODE(ap->a_vp);

 vp = ap->a_vp;
 td = curthread;

 vn_lock(vp, LK_EXCLUSIVE | LK_RETRY);

 unp = VTOUNIONFS(ap->a_vp);
 uvp = unp->un_uppervp;

 if (uvp == NULLVP) {
  error = unionfs_copyfile(unp, 1, td->td_ucred, td);
  if (error != 0)
   goto unionfs_advlock_abort;
  uvp = unp->un_uppervp;

  unionfs_get_node_status(unp, td, &unsp);
  if (unsp->uns_lower_opencnt > 0) {

   error = VOP_OPEN(uvp, unsp->uns_lower_openmode,
    td->td_ucred, td, ((void*)0));
   if (error)
    goto unionfs_advlock_abort;
   unsp->uns_upper_opencnt++;
   VOP_CLOSE(unp->un_lowervp, unsp->uns_lower_openmode, td->td_ucred, td);
   unsp->uns_lower_opencnt--;
  } else
   unionfs_tryrem_node_status(unp, unsp);
 }

 VOP_UNLOCK(vp, LK_RELEASE);

 error = VOP_ADVLOCK(uvp, ap->a_id, ap->a_op, ap->a_fl, ap->a_flags);

 UNIONFS_INTERNAL_DEBUG("unionfs_advlock: leave (%d)\n", error);

 return error;

unionfs_advlock_abort:
 VOP_UNLOCK(vp, LK_RELEASE);

 UNIONFS_INTERNAL_DEBUG("unionfs_advlock: leave (%d)\n", error);

 return error;
}
