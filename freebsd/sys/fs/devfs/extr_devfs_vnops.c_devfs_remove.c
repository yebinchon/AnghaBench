
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vop_remove_args {struct vnode* a_dvp; struct vnode* a_vp; } ;
struct vnode {struct devfs_dirent* v_data; int v_mount; } ;
struct devfs_mount {int dm_lock; } ;
struct devfs_dirent {int de_flags; TYPE_1__* de_dirent; int de_dlist; int * de_cdp; } ;
struct TYPE_2__ {scalar_t__ d_type; int d_namlen; int d_name; } ;


 int ASSERT_VOP_ELOCKED (struct vnode*,char*) ;
 int DE_COVERED ;
 int DE_WHITEOUT ;
 scalar_t__ DT_LNK ;
 int LK_EXCLUSIVE ;
 int LK_RETRY ;
 int TAILQ_REMOVE (int *,struct devfs_dirent*,int ) ;
 struct devfs_mount* VFSTODEVFS (int ) ;
 int VOP_UNLOCK (struct vnode*,int ) ;
 int de_list ;
 int devfs_delete (struct devfs_mount*,struct devfs_dirent*,int ) ;
 struct devfs_dirent* devfs_find (struct devfs_dirent*,int ,int ,int ) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;
 int vn_lock (struct vnode*,int) ;

__attribute__((used)) static int
devfs_remove(struct vop_remove_args *ap)
{
 struct vnode *dvp = ap->a_dvp;
 struct vnode *vp = ap->a_vp;
 struct devfs_dirent *dd;
 struct devfs_dirent *de, *de_covered;
 struct devfs_mount *dmp = VFSTODEVFS(vp->v_mount);

 ASSERT_VOP_ELOCKED(dvp, "devfs_remove");
 ASSERT_VOP_ELOCKED(vp, "devfs_remove");

 sx_xlock(&dmp->dm_lock);
 dd = ap->a_dvp->v_data;
 de = vp->v_data;
 if (de->de_cdp == ((void*)0)) {
  TAILQ_REMOVE(&dd->de_dlist, de, de_list);
  if (de->de_dirent->d_type == DT_LNK) {
   de_covered = devfs_find(dd, de->de_dirent->d_name,
       de->de_dirent->d_namlen, 0);
   if (de_covered != ((void*)0))
    de_covered->de_flags &= ~DE_COVERED;
  }

  VOP_UNLOCK(vp, 0);
  if (dvp != vp)
   VOP_UNLOCK(dvp, 0);
  devfs_delete(dmp, de, 0);
  sx_xunlock(&dmp->dm_lock);
  if (dvp != vp)
   vn_lock(dvp, LK_EXCLUSIVE | LK_RETRY);
  vn_lock(vp, LK_EXCLUSIVE | LK_RETRY);
 } else {
  de->de_flags |= DE_WHITEOUT;
  sx_xunlock(&dmp->dm_lock);
 }
 return (0);
}
