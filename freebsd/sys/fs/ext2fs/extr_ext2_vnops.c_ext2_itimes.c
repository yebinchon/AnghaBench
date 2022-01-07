
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;


 int VI_LOCK (struct vnode*) ;
 int VI_UNLOCK (struct vnode*) ;
 int ext2_itimes_locked (struct vnode*) ;

void
ext2_itimes(struct vnode *vp)
{

 VI_LOCK(vp);
 ext2_itimes_locked(vp);
 VI_UNLOCK(vp);
}
