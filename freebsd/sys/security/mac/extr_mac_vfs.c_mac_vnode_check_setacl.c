
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int v_label; } ;
struct ucred {int dummy; } ;
struct acl {int dummy; } ;
typedef int acl_type_t ;


 int ASSERT_VOP_LOCKED (struct vnode*,char*) ;
 int MAC_CHECK_PROBE4 (int ,int,struct ucred*,struct vnode*,int ,struct acl*) ;
 int MAC_POLICY_CHECK (int ,struct ucred*,struct vnode*,int ,int ,struct acl*) ;
 int vnode_check_setacl ;

int
mac_vnode_check_setacl(struct ucred *cred, struct vnode *vp, acl_type_t type,
    struct acl *acl)
{
 int error;

 ASSERT_VOP_LOCKED(vp, "mac_vnode_check_setacl");

 MAC_POLICY_CHECK(vnode_check_setacl, cred, vp, vp->v_label, type, acl);
 MAC_CHECK_PROBE4(vnode_check_setacl, error, cred, vp, type, acl);

 return (error);
}
