
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct vnode {int v_label; } ;
struct ucred {int dummy; } ;
typedef int gid_t ;


 int ASSERT_VOP_LOCKED (struct vnode*,char*) ;
 int MAC_CHECK_PROBE4 (int ,int,struct ucred*,struct vnode*,int ,int ) ;
 int MAC_POLICY_CHECK (int ,struct ucred*,struct vnode*,int ,int ,int ) ;
 int vnode_check_setowner ;

int
mac_vnode_check_setowner(struct ucred *cred, struct vnode *vp, uid_t uid,
    gid_t gid)
{
 int error;

 ASSERT_VOP_LOCKED(vp, "mac_vnode_check_setowner");

 MAC_POLICY_CHECK(vnode_check_setowner, cred, vp, vp->v_label, uid, gid);
 MAC_CHECK_PROBE4(vnode_check_setowner, error, cred, vp, uid, gid);

 return (error);
}
