
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct devfs_mount {int dm_lock; } ;
struct devfs_dirent {int de_flags; scalar_t__ de_inode; int * de_symlink; struct vnode* de_vnode; } ;


 int DEVFS_DEL_NORECURSE ;
 int DEVFS_DEL_VNLOCKED ;
 scalar_t__ DEVFS_DE_DROP (struct devfs_dirent*) ;
 int DEVFS_DE_HOLD (struct devfs_dirent*) ;
 scalar_t__ DEVFS_ROOTINO ;
 int DE_DOOMED ;
 int DE_USER ;
 int KASSERT (int,char*) ;
 int LK_EXCLUSIVE ;
 int LK_INTERLOCK ;
 int LK_RETRY ;
 int M_DEVFS ;
 int VI_LOCK (struct vnode*) ;
 int VI_UNLOCK (struct vnode*) ;
 int VOP_UNLOCK (struct vnode*,int ) ;
 int devfs_de_interlock ;
 int devfs_dir_unref_de (struct devfs_mount*,struct devfs_dirent*) ;
 int devfs_dirent_free (struct devfs_dirent*) ;
 int devfs_free_cdp_inode (scalar_t__) ;
 struct devfs_dirent* devfs_parent_dirent (struct devfs_dirent*) ;
 int devfs_rmdir_empty (struct devfs_mount*,struct devfs_dirent*) ;
 int free (int *,int ) ;
 int mac_devfs_destroy (struct devfs_dirent*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int sx_unlock (int *) ;
 int sx_xlock (int *) ;
 int vdrop (struct vnode*) ;
 int vgone (struct vnode*) ;
 int vholdl (struct vnode*) ;
 int vn_lock (struct vnode*,int) ;

void
devfs_delete(struct devfs_mount *dm, struct devfs_dirent *de, int flags)
{
 struct devfs_dirent *dd;
 struct vnode *vp;

 KASSERT((de->de_flags & DE_DOOMED) == 0,
  ("devfs_delete doomed dirent"));
 de->de_flags |= DE_DOOMED;

 if ((flags & DEVFS_DEL_NORECURSE) == 0) {
  dd = devfs_parent_dirent(de);
  if (dd != ((void*)0))
   DEVFS_DE_HOLD(dd);
  if (de->de_flags & DE_USER) {
   KASSERT(dd != ((void*)0), ("devfs_delete: NULL dd"));
   devfs_dir_unref_de(dm, dd);
  }
 } else
  dd = ((void*)0);

 mtx_lock(&devfs_de_interlock);
 vp = de->de_vnode;
 if (vp != ((void*)0)) {
  VI_LOCK(vp);
  mtx_unlock(&devfs_de_interlock);
  vholdl(vp);
  sx_unlock(&dm->dm_lock);
  if ((flags & DEVFS_DEL_VNLOCKED) == 0)
   vn_lock(vp, LK_EXCLUSIVE | LK_INTERLOCK | LK_RETRY);
  else
   VI_UNLOCK(vp);
  vgone(vp);
  if ((flags & DEVFS_DEL_VNLOCKED) == 0)
   VOP_UNLOCK(vp, 0);
  vdrop(vp);
  sx_xlock(&dm->dm_lock);
 } else
  mtx_unlock(&devfs_de_interlock);
 if (de->de_symlink) {
  free(de->de_symlink, M_DEVFS);
  de->de_symlink = ((void*)0);
 }



 if (de->de_inode > DEVFS_ROOTINO) {
  devfs_free_cdp_inode(de->de_inode);
  de->de_inode = 0;
 }
 if (DEVFS_DE_DROP(de))
  devfs_dirent_free(de);

 if (dd != ((void*)0)) {
  if (DEVFS_DE_DROP(dd))
   devfs_dirent_free(dd);
  else
   devfs_rmdir_empty(dm, dd);
 }
}
