
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vop_setlabel_args {int a_cred; struct label* a_label; struct vnode* a_vp; } ;
struct vnode {TYPE_1__* v_mount; } ;
struct label {int dummy; } ;
struct TYPE_2__ {int mnt_flag; } ;


 int ASSERT_VOP_LOCKED (struct vnode*,char*) ;
 int EOPNOTSUPP ;
 int MNT_MULTILABEL ;
 int mac_vnode_relabel (int ,struct vnode*,struct label*) ;
 int mac_vnode_setlabel_extattr (int ,struct vnode*,struct label*) ;

int
vop_stdsetlabel_ea(struct vop_setlabel_args *ap)
{
 struct vnode *vp = ap->a_vp;
 struct label *intlabel = ap->a_label;
 int error;

 ASSERT_VOP_LOCKED(vp, "vop_stdsetlabel_ea");

 if ((vp->v_mount->mnt_flag & MNT_MULTILABEL) == 0)
  return (EOPNOTSUPP);

 error = mac_vnode_setlabel_extattr(ap->a_cred, vp, intlabel);
 if (error)
  return (error);

 mac_vnode_relabel(ap->a_cred, vp, intlabel);

 return (0);
}
