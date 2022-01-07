
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct thread {int td_ucred; } ;
struct acl {int dummy; } ;
typedef int acl_type_t ;


 int M_WAITOK ;
 int VOP_ACLCHECK (struct vnode*,int ,struct acl*,int ,struct thread*) ;
 struct acl* acl_alloc (int ) ;
 int acl_copyin (struct acl const*,struct acl*,int ) ;
 int acl_free (struct acl*) ;
 int acl_type_unold (int ) ;

__attribute__((used)) static int
vacl_aclcheck(struct thread *td, struct vnode *vp, acl_type_t type,
    const struct acl *aclp)
{
 struct acl *inkernelacl;
 int error;

 inkernelacl = acl_alloc(M_WAITOK);
 error = acl_copyin(aclp, inkernelacl, type);
 if (error != 0)
  goto out;
 error = VOP_ACLCHECK(vp, acl_type_unold(type), inkernelacl,
     td->td_ucred, td);
out:
 acl_free(inkernelacl);
 return (error);
}
