
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
typedef enum vgetstate { ____Placeholder_vgetstate } vgetstate ;


 int _vget_prep (struct vnode*,int) ;

enum vgetstate
vget_prep(struct vnode *vp)
{

 return (_vget_prep(vp, 0));
}
