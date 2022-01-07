
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_vptofh_args {int a_fhp; int a_vp; } ;
struct vnode {int dummy; } ;


 struct vnode* NULLVPTOLOWERVP (int ) ;
 int VOP_VPTOFH (struct vnode*,int ) ;

__attribute__((used)) static int
null_vptofh(struct vop_vptofh_args *ap)
{
 struct vnode *lvp;

 lvp = NULLVPTOLOWERVP(ap->a_vp);
 return VOP_VPTOFH(lvp, ap->a_fhp);
}
