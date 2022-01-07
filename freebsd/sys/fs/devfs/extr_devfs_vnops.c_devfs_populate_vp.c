
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int v_iflag; struct devfs_dirent* v_data; int v_mount; } ;
struct devfs_mount {int dm_lock; } ;
struct devfs_dirent {int de_flags; } ;


 int ASSERT_VOP_LOCKED (struct vnode*,char*) ;
 scalar_t__ DEVFS_DMP_DROP (struct devfs_mount*) ;
 int DEVFS_DMP_HOLD (struct devfs_mount*) ;
 int DE_DOOMED ;
 int ERESTART ;
 int KASSERT (int ,char*) ;
 int LK_RETRY ;
 struct devfs_mount* VFSTODEVFS (int ) ;
 int VI_DOOMED ;
 int VOP_ISLOCKED (struct vnode*) ;
 int VOP_UNLOCK (struct vnode*,int ) ;
 int devfs_populate (struct devfs_mount*) ;
 int devfs_unmount_final (struct devfs_mount*) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;
 int vn_lock (struct vnode*,int) ;

__attribute__((used)) static int
devfs_populate_vp(struct vnode *vp)
{
 struct devfs_dirent *de;
 struct devfs_mount *dmp;
 int locked;

 ASSERT_VOP_LOCKED(vp, "devfs_populate_vp");

 dmp = VFSTODEVFS(vp->v_mount);
 locked = VOP_ISLOCKED(vp);

 sx_xlock(&dmp->dm_lock);
 DEVFS_DMP_HOLD(dmp);


 VOP_UNLOCK(vp, 0);
 devfs_populate(dmp);

 sx_xunlock(&dmp->dm_lock);
 vn_lock(vp, locked | LK_RETRY);
 sx_xlock(&dmp->dm_lock);
 if (DEVFS_DMP_DROP(dmp)) {
  sx_xunlock(&dmp->dm_lock);
  devfs_unmount_final(dmp);
  return (ERESTART);
 }
 if ((vp->v_iflag & VI_DOOMED) != 0) {
  sx_xunlock(&dmp->dm_lock);
  return (ERESTART);
 }
 de = vp->v_data;
 KASSERT(de != ((void*)0),
     ("devfs_populate_vp: vp->v_data == NULL but vnode not doomed"));
 if ((de->de_flags & DE_DOOMED) != 0) {
  sx_xunlock(&dmp->dm_lock);
  return (ERESTART);
 }

 return (0);
}
