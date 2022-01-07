
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;


 int VPUTX_VPUT ;
 int vputx (struct vnode*,int ) ;

void
vput(struct vnode *vp)
{

 vputx(vp, VPUTX_VPUT);
}
