
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct vnode {int v_label; } ;
struct ucred {int dummy; } ;


 int ASSERT_VOP_LOCKED (struct vnode*,char*) ;
 int MAC_CHECK_PROBE3 (int ,int,struct ucred*,struct vnode*,int ) ;
 int MAC_POLICY_CHECK (int ,struct ucred*,struct vnode*,int ,int ) ;
 int vnode_check_setflags ;

int
mac_vnode_check_setflags(struct ucred *cred, struct vnode *vp, u_long flags)
{
 int error;

 ASSERT_VOP_LOCKED(vp, "mac_vnode_check_setflags");

 MAC_POLICY_CHECK(vnode_check_setflags, cred, vp, vp->v_label, flags);
 MAC_CHECK_PROBE3(vnode_check_setflags, error, cred, vp, flags);

 return (error);
}
