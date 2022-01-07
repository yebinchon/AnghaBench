
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int v_label; } ;
struct ucred {int dummy; } ;
struct timespec {int dummy; } ;


 int ASSERT_VOP_LOCKED (struct vnode*,char*) ;
 int MAC_CHECK_PROBE4 (int ,int,struct ucred*,struct vnode*,struct timespec*,struct timespec*) ;
 int MAC_POLICY_CHECK (int ,struct ucred*,struct vnode*,int ,struct timespec,struct timespec) ;
 int vnode_check_setutimes ;

int
mac_vnode_check_setutimes(struct ucred *cred, struct vnode *vp,
    struct timespec atime, struct timespec mtime)
{
 int error;

 ASSERT_VOP_LOCKED(vp, "mac_vnode_check_setutimes");

 MAC_POLICY_CHECK(vnode_check_setutimes, cred, vp, vp->v_label, atime,
     mtime);
 MAC_CHECK_PROBE4(vnode_check_setutimes, error, cred, vp, &atime,
     &mtime);

 return (error);
}
