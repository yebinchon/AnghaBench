
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int v_label; } ;
struct ucred {int dummy; } ;


 int ASSERT_VOP_LOCKED (struct vnode*,char*) ;
 int MAC_CHECK_PROBE4 (int ,int,struct ucred*,struct vnode*,int,int) ;
 int MAC_POLICY_CHECK (int ,struct ucred*,struct vnode*,int ,int,int) ;
 int vnode_check_mmap ;

int
mac_vnode_check_mmap(struct ucred *cred, struct vnode *vp, int prot,
    int flags)
{
 int error;

 ASSERT_VOP_LOCKED(vp, "mac_vnode_check_mmap");

 MAC_POLICY_CHECK(vnode_check_mmap, cred, vp, vp->v_label, prot, flags);
 MAC_CHECK_PROBE4(vnode_check_mmap, error, cred, vp, prot, flags);

 return (error);
}
