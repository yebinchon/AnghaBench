
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct thread {int td_ucred; } ;
struct acl {int dummy; } ;
typedef int acl_type_t ;


 int AUDIT_ARG_VALUE (int ) ;
 int AUDIT_ARG_VNODE1 (struct vnode*) ;
 int LK_EXCLUSIVE ;
 int LK_RETRY ;
 int M_WAITOK ;
 int M_ZERO ;
 int VOP_GETACL (struct vnode*,int ,struct acl*,int ,struct thread*) ;
 int VOP_UNLOCK (struct vnode*,int ) ;
 struct acl* acl_alloc (int) ;
 int acl_copyout (struct acl*,struct acl*,int ) ;
 int acl_free (struct acl*) ;
 int acl_type_unold (int ) ;
 int mac_vnode_check_getacl (int ,struct vnode*,int ) ;
 int vn_lock (struct vnode*,int) ;

__attribute__((used)) static int
vacl_get_acl(struct thread *td, struct vnode *vp, acl_type_t type,
    struct acl *aclp)
{
 struct acl *inkernelacl;
 int error;

 AUDIT_ARG_VALUE(type);
 inkernelacl = acl_alloc(M_WAITOK | M_ZERO);
 vn_lock(vp, LK_EXCLUSIVE | LK_RETRY);
 AUDIT_ARG_VNODE1(vp);





 error = VOP_GETACL(vp, acl_type_unold(type), inkernelacl,
     td->td_ucred, td);




 VOP_UNLOCK(vp, 0);
 if (error == 0)
  error = acl_copyout(inkernelacl, aclp, type);
 acl_free(inkernelacl);
 return (error);
}
