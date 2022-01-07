
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_open_args {int a_gen; struct vnode* a_vp; } ;
struct vnode {int v_object; } ;


 struct vnode* NULLVPTOLOWERVP (struct vnode*) ;
 int null_bypass (int *) ;

__attribute__((used)) static int
null_open(struct vop_open_args *ap)
{
 int retval;
 struct vnode *vp, *ldvp;

 vp = ap->a_vp;
 ldvp = NULLVPTOLOWERVP(vp);
 retval = null_bypass(&ap->a_gen);
 if (retval == 0)
  vp->v_object = ldvp->v_object;
 return (retval);
}
