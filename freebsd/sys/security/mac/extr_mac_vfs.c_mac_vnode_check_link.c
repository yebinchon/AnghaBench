
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int v_label; } ;
struct ucred {int dummy; } ;
struct componentname {int dummy; } ;


 int ASSERT_VOP_LOCKED (struct vnode*,char*) ;
 int MAC_CHECK_PROBE4 (int ,int,struct ucred*,struct vnode*,struct vnode*,struct componentname*) ;
 int MAC_POLICY_CHECK (int ,struct ucred*,struct vnode*,int ,struct vnode*,int ,struct componentname*) ;
 int vnode_check_link ;

int
mac_vnode_check_link(struct ucred *cred, struct vnode *dvp,
    struct vnode *vp, struct componentname *cnp)
{
 int error;

 ASSERT_VOP_LOCKED(dvp, "mac_vnode_check_link");
 ASSERT_VOP_LOCKED(vp, "mac_vnode_check_link");

 MAC_POLICY_CHECK(vnode_check_link, cred, dvp, dvp->v_label, vp,
     vp->v_label, cnp);
 MAC_CHECK_PROBE4(vnode_check_link, error, cred, dvp, vp, cnp);

 return (error);
}
