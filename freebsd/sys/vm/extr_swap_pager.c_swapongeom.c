
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {scalar_t__ v_type; int v_iflag; int v_rdev; } ;


 int ENOENT ;
 int LK_EXCLUSIVE ;
 int LK_RETRY ;
 scalar_t__ VCHR ;
 int VI_DOOMED ;
 int VOP_UNLOCK (struct vnode*,int ) ;
 int g_topology_lock () ;
 int g_topology_unlock () ;
 int swapongeom_locked (int ,struct vnode*) ;
 int vn_lock (struct vnode*,int) ;

__attribute__((used)) static int
swapongeom(struct vnode *vp)
{
 int error;

 vn_lock(vp, LK_EXCLUSIVE | LK_RETRY);
 if (vp->v_type != VCHR || (vp->v_iflag & VI_DOOMED) != 0) {
  error = ENOENT;
 } else {
  g_topology_lock();
  error = swapongeom_locked(vp->v_rdev, vp);
  g_topology_unlock();
 }
 VOP_UNLOCK(vp, 0);
 return (error);
}
