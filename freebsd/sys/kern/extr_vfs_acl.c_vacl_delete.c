
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct thread {int td_ucred; } ;
struct mount {int dummy; } ;
typedef int acl_type_t ;


 int AUDIT_ARG_VALUE (int ) ;
 int AUDIT_ARG_VNODE1 (struct vnode*) ;
 int LK_EXCLUSIVE ;
 int LK_RETRY ;
 int PCATCH ;
 int VOP_SETACL (struct vnode*,int ,int ,int ,struct thread*) ;
 int VOP_UNLOCK (struct vnode*,int ) ;
 int V_WAIT ;
 int acl_type_unold (int ) ;
 int mac_vnode_check_deleteacl (int ,struct vnode*,int ) ;
 int vn_finished_write (struct mount*) ;
 int vn_lock (struct vnode*,int) ;
 int vn_start_write (struct vnode*,struct mount**,int) ;

__attribute__((used)) static int
vacl_delete(struct thread *td, struct vnode *vp, acl_type_t type)
{
 struct mount *mp;
 int error;

 AUDIT_ARG_VALUE(type);
 error = vn_start_write(vp, &mp, V_WAIT | PCATCH);
 if (error != 0)
  return (error);
 vn_lock(vp, LK_EXCLUSIVE | LK_RETRY);
 AUDIT_ARG_VNODE1(vp);





 error = VOP_SETACL(vp, acl_type_unold(type), 0, td->td_ucred, td);



 VOP_UNLOCK(vp, 0);
 vn_finished_write(mp);
 return (error);
}
