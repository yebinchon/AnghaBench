
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int v_label; } ;
struct ucred {int dummy; } ;
struct componentname {int dummy; } ;


 int ASSERT_VOP_LOCKED (struct vnode*,char*) ;
 int MAC_CHECK_PROBE3 (int ,int,struct ucred*,struct vnode*,struct componentname*) ;
 int MAC_POLICY_CHECK (int ,struct ucred*,struct vnode*,int ,struct componentname*) ;
 int vnode_check_lookup ;

int
mac_vnode_check_lookup(struct ucred *cred, struct vnode *dvp,
    struct componentname *cnp)
{
 int error;

 ASSERT_VOP_LOCKED(dvp, "mac_vnode_check_lookup");

 MAC_POLICY_CHECK(vnode_check_lookup, cred, dvp, dvp->v_label, cnp);
 MAC_CHECK_PROBE3(vnode_check_lookup, error, cred, dvp, cnp);

 return (error);
}
