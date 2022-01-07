
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int v_label; } ;
struct ucred {int dummy; } ;


 int ASSERT_VOP_LOCKED (struct vnode*,char*) ;
 int MAC_CHECK_PROBE3 (int ,int,struct ucred*,struct ucred*,struct vnode*) ;
 int MAC_POLICY_CHECK (int ,struct ucred*,struct ucred*,struct vnode*,int ) ;
 int vnode_check_poll ;

int
mac_vnode_check_poll(struct ucred *active_cred, struct ucred *file_cred,
    struct vnode *vp)
{
 int error;

 ASSERT_VOP_LOCKED(vp, "mac_vnode_check_poll");

 MAC_POLICY_CHECK(vnode_check_poll, active_cred, file_cred, vp,
     vp->v_label);
 MAC_CHECK_PROBE3(vnode_check_poll, error, active_cred, file_cred,
     vp);

 return (error);
}
