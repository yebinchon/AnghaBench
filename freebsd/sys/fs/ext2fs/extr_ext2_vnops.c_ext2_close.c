
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_close_args {struct vnode* a_vp; } ;
struct vnode {int v_usecount; } ;


 int VI_LOCK (struct vnode*) ;
 int VI_UNLOCK (struct vnode*) ;
 int ext2_itimes_locked (struct vnode*) ;

__attribute__((used)) static int
ext2_close(struct vop_close_args *ap)
{
 struct vnode *vp = ap->a_vp;

 VI_LOCK(vp);
 if (vp->v_usecount > 1)
  ext2_itimes_locked(vp);
 VI_UNLOCK(vp);
 return (0);
}
