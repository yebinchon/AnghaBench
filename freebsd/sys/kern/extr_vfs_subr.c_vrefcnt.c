
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int v_usecount; } ;



int
vrefcnt(struct vnode *vp)
{

 return (vp->v_usecount);
}
