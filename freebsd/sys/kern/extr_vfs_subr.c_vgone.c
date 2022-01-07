
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;


 int VI_LOCK (struct vnode*) ;
 int VI_UNLOCK (struct vnode*) ;
 int vgonel (struct vnode*) ;

void
vgone(struct vnode *vp)
{
 VI_LOCK(vp);
 vgonel(vp);
 VI_UNLOCK(vp);
}
