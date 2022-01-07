
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int v_label; } ;
struct ucred {int dummy; } ;
struct label {int dummy; } ;
struct image_params {int execlabel; } ;


 int ASSERT_VOP_LOCKED (struct vnode*,char*) ;
 int MAC_POLICY_PERFORM (int ,struct ucred*,struct ucred*,struct vnode*,int ,struct label*,struct image_params*,int ) ;
 int vnode_execve_transition ;

void
mac_vnode_execve_transition(struct ucred *old, struct ucred *new,
    struct vnode *vp, struct label *interpvplabel, struct image_params *imgp)
{

 ASSERT_VOP_LOCKED(vp, "mac_vnode_execve_transition");

 MAC_POLICY_PERFORM(vnode_execve_transition, old, new, vp,
     vp->v_label, interpvplabel, imgp, imgp->execlabel);
}
