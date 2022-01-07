
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct vop_revoke_args {int a_flags; struct vnode* a_vp; } ;
struct vnode {struct cdev* v_rdev; } ;
struct devfs_dirent {struct vnode* de_vnode; } ;
struct cdev_priv {scalar_t__ cdp_inuse; size_t cdp_maxdirent; int cdp_flags; int cdp_c; struct devfs_dirent** cdp_dirents; } ;
struct cdev {int dummy; } ;


 int CDP_ACTIVE ;
 int KASSERT (int,char*) ;
 int LK_EXCLUSIVE ;
 int LK_INTERLOCK ;
 int LK_RETRY ;
 int REVOKEALL ;
 int TAILQ_REMOVE (int *,struct cdev_priv*,int ) ;
 int VI_LOCK (struct vnode*) ;
 int VOP_UNLOCK (struct vnode*,int ) ;
 struct cdev_priv* cdev2priv (struct cdev*) ;
 int cdevp_list ;
 int cdp_list ;
 int curthread ;
 int dev_lock () ;
 int dev_rel (int *) ;
 int dev_unlock () ;
 int devfs_de_interlock ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int vdrop (struct vnode*) ;
 scalar_t__ vget (struct vnode*,int,int ) ;
 int vgone (struct vnode*) ;
 int vhold (struct vnode*) ;
 int vn_lock (struct vnode*,int) ;
 int vput (struct vnode*) ;

__attribute__((used)) static int
devfs_revoke(struct vop_revoke_args *ap)
{
 struct vnode *vp = ap->a_vp, *vp2;
 struct cdev *dev;
 struct cdev_priv *cdp;
 struct devfs_dirent *de;
 u_int i;

 KASSERT((ap->a_flags & REVOKEALL) != 0, ("devfs_revoke !REVOKEALL"));

 dev = vp->v_rdev;
 cdp = cdev2priv(dev);

 dev_lock();
 cdp->cdp_inuse++;
 dev_unlock();

 vhold(vp);
 vgone(vp);
 vdrop(vp);

 VOP_UNLOCK(vp,0);
 loop:
 for (;;) {
  mtx_lock(&devfs_de_interlock);
  dev_lock();
  vp2 = ((void*)0);
  for (i = 0; i <= cdp->cdp_maxdirent; i++) {
   de = cdp->cdp_dirents[i];
   if (de == ((void*)0))
    continue;

   vp2 = de->de_vnode;
   if (vp2 != ((void*)0)) {
    dev_unlock();
    VI_LOCK(vp2);
    mtx_unlock(&devfs_de_interlock);
    if (vget(vp2, LK_EXCLUSIVE | LK_INTERLOCK,
        curthread))
     goto loop;
    vhold(vp2);
    vgone(vp2);
    vdrop(vp2);
    vput(vp2);
    break;
   }
  }
  if (vp2 != ((void*)0)) {
   continue;
  }
  dev_unlock();
  mtx_unlock(&devfs_de_interlock);
  break;
 }
 dev_lock();
 cdp->cdp_inuse--;
 if (!(cdp->cdp_flags & CDP_ACTIVE) && cdp->cdp_inuse == 0) {
  TAILQ_REMOVE(&cdevp_list, cdp, cdp_list);
  dev_unlock();
  dev_rel(&cdp->cdp_c);
 } else
  dev_unlock();

 vn_lock(vp, LK_EXCLUSIVE | LK_RETRY);
 return (0);
}
