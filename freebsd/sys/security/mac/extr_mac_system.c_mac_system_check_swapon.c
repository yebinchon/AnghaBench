
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int v_label; } ;
struct ucred {int dummy; } ;


 int ASSERT_VOP_LOCKED (struct vnode*,char*) ;
 int MAC_CHECK_PROBE2 (int ,int,struct ucred*,struct vnode*) ;
 int MAC_POLICY_CHECK (int ,struct ucred*,struct vnode*,int ) ;
 int system_check_swapon ;

int
mac_system_check_swapon(struct ucred *cred, struct vnode *vp)
{
 int error;

 ASSERT_VOP_LOCKED(vp, "mac_system_check_swapon");

 MAC_POLICY_CHECK(system_check_swapon, cred, vp, vp->v_label);
 MAC_CHECK_PROBE2(system_check_swapon, error, cred, vp);

 return (error);
}
