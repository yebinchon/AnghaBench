
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;


 int VI_LOCK (struct vnode*) ;
 int VI_UNLOCK (struct vnode*) ;
 int vrecyclel (struct vnode*) ;

int
vrecycle(struct vnode *vp)
{
 int recycled;

 VI_LOCK(vp);
 recycled = vrecyclel(vp);
 VI_UNLOCK(vp);
 return (recycled);
}
