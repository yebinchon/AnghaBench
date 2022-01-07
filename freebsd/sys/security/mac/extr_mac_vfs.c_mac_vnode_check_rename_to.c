
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int * v_label; } ;
struct ucred {int dummy; } ;
struct componentname {int dummy; } ;


 int ASSERT_VOP_LOCKED (struct vnode*,char*) ;
 int MAC_CHECK_PROBE4 (int ,int,struct ucred*,struct vnode*,struct vnode*,struct componentname*) ;
 int MAC_POLICY_CHECK (int ,struct ucred*,struct vnode*,int *,struct vnode*,int *,int,struct componentname*) ;
 int vnode_check_rename_to ;

int
mac_vnode_check_rename_to(struct ucred *cred, struct vnode *dvp,
    struct vnode *vp, int samedir, struct componentname *cnp)
{
 int error;

 ASSERT_VOP_LOCKED(dvp, "mac_vnode_check_rename_to");
 ASSERT_VOP_LOCKED(vp, "mac_vnode_check_rename_to");

 MAC_POLICY_CHECK(vnode_check_rename_to, cred, dvp, dvp->v_label, vp,
     vp != ((void*)0) ? vp->v_label : ((void*)0), samedir, cnp);
 MAC_CHECK_PROBE4(vnode_check_rename_to, error, cred, dvp, vp, cnp);
 return (error);
}
