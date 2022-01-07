
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int v_label; } ;
struct ucred {int dummy; } ;


 int ASSERT_VOP_LOCKED (struct vnode*,char*) ;
 int MAC_CHECK_PROBE2 (int ,int,struct ucred*,struct vnode*) ;
 int MAC_POLICY_CHECK (int ,struct ucred*,struct vnode*,int ) ;
 int vnode_check_readlink ;

int
mac_vnode_check_readlink(struct ucred *cred, struct vnode *vp)
{
 int error;

 ASSERT_VOP_LOCKED(vp, "mac_vnode_check_readlink");

 MAC_POLICY_CHECK(vnode_check_readlink, cred, vp, vp->v_label);
 MAC_CHECK_PROBE2(vnode_check_readlink, error, cred, vp);

 return (error);
}
