
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int v_label; } ;
struct ucred {int dummy; } ;


 int ASSERT_VOP_LOCKED (struct vnode*,char*) ;
 int MAC_CHECK_PROBE3 (int ,int,struct ucred*,struct vnode*,int) ;
 int MAC_POLICY_CHECK (int ,struct ucred*,struct vnode*,int ,int) ;
 int vnode_check_listextattr ;

int
mac_vnode_check_listextattr(struct ucred *cred, struct vnode *vp,
    int attrnamespace)
{
 int error;

 ASSERT_VOP_LOCKED(vp, "mac_vnode_check_listextattr");

 MAC_POLICY_CHECK(vnode_check_listextattr, cred, vp, vp->v_label,
     attrnamespace);
 MAC_CHECK_PROBE3(vnode_check_listextattr, error, cred, vp,
     attrnamespace);

 return (error);
}
