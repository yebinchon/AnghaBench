
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int v_label; } ;
struct vattr {int dummy; } ;
struct ucred {int dummy; } ;
struct componentname {int dummy; } ;


 int ASSERT_VOP_LOCKED (struct vnode*,char*) ;
 int MAC_CHECK_PROBE4 (int ,int,struct ucred*,struct vnode*,struct componentname*,struct vattr*) ;
 int MAC_POLICY_CHECK (int ,struct ucred*,struct vnode*,int ,struct componentname*,struct vattr*) ;
 int vnode_check_create ;

int
mac_vnode_check_create(struct ucred *cred, struct vnode *dvp,
    struct componentname *cnp, struct vattr *vap)
{
 int error;

 ASSERT_VOP_LOCKED(dvp, "mac_vnode_check_create");

 MAC_POLICY_CHECK(vnode_check_create, cred, dvp, dvp->v_label, cnp,
     vap);
 MAC_CHECK_PROBE4(vnode_check_create, error, cred, dvp, cnp, vap);

 return (error);
}
