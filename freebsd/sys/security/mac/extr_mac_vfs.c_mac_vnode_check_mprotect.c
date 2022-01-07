
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int v_label; } ;
struct ucred {int dummy; } ;


 int ASSERT_VOP_LOCKED (struct vnode*,char*) ;
 int MAC_CHECK_PROBE3 (int ,int,struct ucred*,struct vnode*,int) ;
 int MAC_POLICY_CHECK (int ,struct ucred*,struct vnode*,int ,int) ;
 int vnode_check_mprotect ;

int
mac_vnode_check_mprotect(struct ucred *cred, struct vnode *vp, int prot)
{
 int error;

 ASSERT_VOP_LOCKED(vp, "mac_vnode_check_mprotect");

 MAC_POLICY_CHECK(vnode_check_mprotect, cred, vp, vp->v_label, prot);
 MAC_CHECK_PROBE3(vnode_check_mprotect, error, cred, vp, prot);

 return (error);
}
