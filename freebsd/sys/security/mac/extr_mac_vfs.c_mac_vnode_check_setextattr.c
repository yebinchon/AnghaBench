
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int v_label; } ;
struct ucred {int dummy; } ;


 int ASSERT_VOP_LOCKED (struct vnode*,char*) ;
 int MAC_CHECK_PROBE4 (int ,int,struct ucred*,struct vnode*,int,char const*) ;
 int MAC_POLICY_CHECK (int ,struct ucred*,struct vnode*,int ,int,char const*) ;
 int vnode_check_setextattr ;

int
mac_vnode_check_setextattr(struct ucred *cred, struct vnode *vp,
    int attrnamespace, const char *name)
{
 int error;

 ASSERT_VOP_LOCKED(vp, "mac_vnode_check_setextattr");

 MAC_POLICY_CHECK(vnode_check_setextattr, cred, vp, vp->v_label,
     attrnamespace, name);
 MAC_CHECK_PROBE4(vnode_check_setextattr, error, cred, vp,
     attrnamespace, name);

 return (error);
}
