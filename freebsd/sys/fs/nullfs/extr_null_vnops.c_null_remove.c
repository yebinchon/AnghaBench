
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vop_remove_args {int a_gen; struct vnode* a_vp; } ;
struct vnode {int dummy; } ;
struct TYPE_2__ {int null_flags; } ;


 struct vnode* NULLVPTOLOWERVP (struct vnode*) ;
 int NULLV_DROP ;
 int VREF (struct vnode*) ;
 TYPE_1__* VTONULL (struct vnode*) ;
 int null_bypass (int *) ;
 int vrefcnt (struct vnode*) ;
 int vrele (struct vnode*) ;

__attribute__((used)) static int
null_remove(struct vop_remove_args *ap)
{
 int retval, vreleit;
 struct vnode *lvp, *vp;

 vp = ap->a_vp;
 if (vrefcnt(vp) > 1) {
  lvp = NULLVPTOLOWERVP(vp);
  VREF(lvp);
  vreleit = 1;
 } else
  vreleit = 0;
 VTONULL(vp)->null_flags |= NULLV_DROP;
 retval = null_bypass(&ap->a_gen);
 if (vreleit != 0)
  vrele(lvp);
 return (retval);
}
