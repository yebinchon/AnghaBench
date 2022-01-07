
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int v_label; } ;
struct ucred {int dummy; } ;


 int ASSERT_VOP_LOCKED (struct vnode*,char*) ;
 int MAC_POLICY_PERFORM (int ,struct ucred*,struct vnode*,int ,int*) ;
 int vnode_check_mmap_downgrade ;

void
mac_vnode_check_mmap_downgrade(struct ucred *cred, struct vnode *vp,
    int *prot)
{
 int result = *prot;

 ASSERT_VOP_LOCKED(vp, "mac_vnode_check_mmap_downgrade");

 MAC_POLICY_PERFORM(vnode_check_mmap_downgrade, cred, vp, vp->v_label,
     &result);

 *prot = result;
}
