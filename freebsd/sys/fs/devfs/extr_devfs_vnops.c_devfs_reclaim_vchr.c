
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_reclaim_args {struct vnode* a_vp; } ;
struct vnode {scalar_t__ v_type; scalar_t__ v_usecount; struct cdev* v_rdev; } ;
struct cdev {int si_usecount; } ;


 int MPASS (int) ;
 scalar_t__ VCHR ;
 int VI_LOCK (struct vnode*) ;
 int VI_UNLOCK (struct vnode*) ;
 int dev_lock () ;
 int dev_rel (struct cdev*) ;
 int dev_unlock () ;
 int devfs_reclaim (struct vop_reclaim_args*) ;

__attribute__((used)) static int
devfs_reclaim_vchr(struct vop_reclaim_args *ap)
{
 struct vnode *vp;
 struct cdev *dev;

 vp = ap->a_vp;
 MPASS(vp->v_type == VCHR);

 devfs_reclaim(ap);

 VI_LOCK(vp);
 dev_lock();
 dev = vp->v_rdev;
 vp->v_rdev = ((void*)0);
 if (dev != ((void*)0))
  dev->si_usecount -= vp->v_usecount;
 dev_unlock();
 VI_UNLOCK(vp);
 if (dev != ((void*)0))
  dev_rel(dev);
 return (0);
}
