
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int v_label; } ;
struct ucred {int dummy; } ;
typedef int accmode_t ;


 int ASSERT_VOP_LOCKED (struct vnode*,char*) ;
 int MAC_CHECK_PROBE3 (int ,int,struct ucred*,struct vnode*,int ) ;
 int MAC_POLICY_CHECK (int ,struct ucred*,struct vnode*,int ,int ) ;
 int vnode_check_access ;

int
mac_vnode_check_access(struct ucred *cred, struct vnode *vp, accmode_t accmode)
{
 int error;

 ASSERT_VOP_LOCKED(vp, "mac_vnode_check_access");

 MAC_POLICY_CHECK(vnode_check_access, cred, vp, vp->v_label, accmode);
 MAC_CHECK_PROBE3(vnode_check_access, error, cred, vp, accmode);

 return (error);
}
