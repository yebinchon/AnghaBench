
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int v_label; } ;
struct ucred {int dummy; } ;
struct label {int dummy; } ;


 int ASSERT_VOP_LOCKED (struct vnode*,char*) ;
 int MAC_CHECK_PROBE3 (int ,int,struct ucred*,struct vnode*,struct label*) ;
 int MAC_POLICY_CHECK (int ,struct ucred*,struct vnode*,int ,struct label*) ;
 int vnode_check_relabel ;

__attribute__((used)) static int
mac_vnode_check_relabel(struct ucred *cred, struct vnode *vp,
    struct label *newlabel)
{
 int error;

 ASSERT_VOP_LOCKED(vp, "mac_vnode_check_relabel");

 MAC_POLICY_CHECK(vnode_check_relabel, cred, vp, vp->v_label, newlabel);
 MAC_CHECK_PROBE3(vnode_check_relabel, error, cred, vp, newlabel);

 return (error);
}
