
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int v_label; } ;
struct ucred {int dummy; } ;
struct label {int dummy; } ;


 int MAC_POLICY_PERFORM (int ,struct ucred*,struct vnode*,int ,struct label*) ;
 int vnode_relabel ;

void
mac_vnode_relabel(struct ucred *cred, struct vnode *vp,
    struct label *newlabel)
{

 MAC_POLICY_PERFORM(vnode_relabel, cred, vp, vp->v_label, newlabel);
}
