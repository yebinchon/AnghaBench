
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vop_print_args {struct vnode* a_vp; } ;
struct vnode {int dummy; } ;
struct TYPE_2__ {int null_lowervp; } ;


 TYPE_1__* VTONULL (struct vnode*) ;
 int printf (char*,struct vnode*,int ) ;

__attribute__((used)) static int
null_print(struct vop_print_args *ap)
{
 struct vnode *vp = ap->a_vp;

 printf("\tvp=%p, lowervp=%p\n", vp, VTONULL(vp)->null_lowervp);
 return (0);
}
