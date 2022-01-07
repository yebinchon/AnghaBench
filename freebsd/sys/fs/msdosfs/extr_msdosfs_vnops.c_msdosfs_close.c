
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_close_args {struct vnode* a_vp; } ;
struct vnode {int v_usecount; } ;
struct timespec {int dummy; } ;
struct denode {int dummy; } ;


 int DETIMES (struct denode*,struct timespec*,struct timespec*,struct timespec*) ;
 int VI_LOCK (struct vnode*) ;
 int VI_UNLOCK (struct vnode*) ;
 struct denode* VTODE (struct vnode*) ;
 int vfs_timestamp (struct timespec*) ;

__attribute__((used)) static int
msdosfs_close(struct vop_close_args *ap)
{
 struct vnode *vp = ap->a_vp;
 struct denode *dep = VTODE(vp);
 struct timespec ts;

 VI_LOCK(vp);
 if (vp->v_usecount > 1) {
  vfs_timestamp(&ts);
  DETIMES(dep, &ts, &ts, &ts);
 }
 VI_UNLOCK(vp);
 return 0;
}
