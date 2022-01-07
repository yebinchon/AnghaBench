
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int v_label; } ;
struct mount {int mnt_label; } ;


 int MAC_POLICY_PERFORM_NOSLEEP (int ,struct mount*,int ,struct vnode*,int ) ;
 int vnode_associate_singlelabel ;

void
mac_vnode_associate_singlelabel(struct mount *mp, struct vnode *vp)
{

 MAC_POLICY_PERFORM_NOSLEEP(vnode_associate_singlelabel, mp,
     mp->mnt_label, vp, vp->v_label);
}
