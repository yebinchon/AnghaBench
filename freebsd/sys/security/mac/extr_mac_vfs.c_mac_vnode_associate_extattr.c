
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int v_label; } ;
struct mount {int mnt_label; } ;


 int ASSERT_VOP_LOCKED (struct vnode*,char*) ;
 int MAC_POLICY_CHECK (int ,struct mount*,int ,struct vnode*,int ) ;
 int vnode_associate_extattr ;

int
mac_vnode_associate_extattr(struct mount *mp, struct vnode *vp)
{
 int error;

 ASSERT_VOP_LOCKED(vp, "mac_vnode_associate_extattr");

 MAC_POLICY_CHECK(vnode_associate_extattr, mp, mp->mnt_label, vp,
     vp->v_label);

 return (error);
}
