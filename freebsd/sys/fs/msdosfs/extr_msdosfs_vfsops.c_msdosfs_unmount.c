
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int bv_hd; } ;
struct TYPE_7__ {int bv_hd; } ;
struct bufobj {int bo_numoutput; TYPE_3__ bo_dirty; TYPE_2__ bo_clean; } ;
struct TYPE_6__ {int tqe_prev; } ;
struct vnode {int v_type; struct bufobj v_bufobj; int v_mount; TYPE_1__ v_actfreelist; } ;
struct msdosfsmount {int pm_flags; int pm_fatlock; struct msdosfsmount* pm_inusemap; TYPE_5__* pm_dev; struct vnode* pm_devvp; int pm_cp; scalar_t__ pm_u2d; scalar_t__ pm_d2u; scalar_t__ pm_u2w; scalar_t__ pm_w2u; } ;
struct mount {int mnt_flag; int * mnt_data; } ;
struct TYPE_10__ {int si_mountpt; } ;
struct TYPE_9__ {int (* close ) (scalar_t__) ;} ;


 int BO_LOCK (struct bufobj*) ;
 int BO_UNLOCK (struct bufobj*) ;
 int ENXIO ;
 int FORCECLOSE ;
 int MNT_FORCE ;
 int MNT_ILOCK (struct mount*) ;
 int MNT_IUNLOCK (struct mount*) ;
 int MNT_LOCAL ;
 int MNT_WAIT ;
 int MSDOSFSMNT_KICONV ;
 int MSDOSFSMNT_RONLY ;
 int M_MSDOSFSFAT ;
 int M_MSDOSFSMNT ;
 int TAILQ_FIRST (int *) ;
 int TAILQ_NEXT (struct vnode*,int ) ;
 struct msdosfsmount* VFSTOMSDOSFS (struct mount*) ;
 int VI_LOCK (struct vnode*) ;
 int VI_UNLOCK (struct vnode*) ;
 int atomic_store_rel_ptr (uintptr_t*,int ) ;
 int curthread ;
 int dev_rel (TYPE_5__*) ;
 int free (struct msdosfsmount*,int ) ;
 int g_topology_lock () ;
 int g_topology_unlock () ;
 int g_vfs_close (int ) ;
 int lockdestroy (int *) ;
 int markvoldirty (struct msdosfsmount*,int) ;
 TYPE_4__* msdosfs_iconv ;
 int msdosfs_sync (struct mount*,int ) ;
 int printf (char*,int ,int ,int ,...) ;
 int stub1 (scalar_t__) ;
 int stub2 (scalar_t__) ;
 int stub3 (scalar_t__) ;
 int stub4 (scalar_t__) ;
 int v_actfreelist ;
 int vflush (struct mount*,int ,int,int ) ;
 int vn_printf (struct vnode*,char*) ;
 int vrele (struct vnode*) ;

__attribute__((used)) static int
msdosfs_unmount(struct mount *mp, int mntflags)
{
 struct msdosfsmount *pmp;
 int error, flags;

 error = flags = 0;
 pmp = VFSTOMSDOSFS(mp);
 if ((pmp->pm_flags & MSDOSFSMNT_RONLY) == 0)
  error = msdosfs_sync(mp, MNT_WAIT);
 if ((mntflags & MNT_FORCE) != 0)
  flags |= FORCECLOSE;
 else if (error != 0)
  return (error);
 error = vflush(mp, 0, flags, curthread);
 if (error != 0 && error != ENXIO)
  return (error);
 if ((pmp->pm_flags & MSDOSFSMNT_RONLY) == 0) {
  error = markvoldirty(pmp, 0);
  if (error && error != ENXIO) {
   (void)markvoldirty(pmp, 1);
   return (error);
  }
 }
 if (pmp->pm_flags & MSDOSFSMNT_KICONV && msdosfs_iconv) {
  if (pmp->pm_w2u)
   msdosfs_iconv->close(pmp->pm_w2u);
  if (pmp->pm_u2w)
   msdosfs_iconv->close(pmp->pm_u2w);
  if (pmp->pm_d2u)
   msdosfs_iconv->close(pmp->pm_d2u);
  if (pmp->pm_u2d)
   msdosfs_iconv->close(pmp->pm_u2d);
 }
 g_topology_lock();
 g_vfs_close(pmp->pm_cp);
 g_topology_unlock();
 atomic_store_rel_ptr((uintptr_t *)&pmp->pm_dev->si_mountpt, 0);
 vrele(pmp->pm_devvp);
 dev_rel(pmp->pm_dev);
 free(pmp->pm_inusemap, M_MSDOSFSFAT);
 lockdestroy(&pmp->pm_fatlock);
 free(pmp, M_MSDOSFSMNT);
 mp->mnt_data = ((void*)0);
 MNT_ILOCK(mp);
 mp->mnt_flag &= ~MNT_LOCAL;
 MNT_IUNLOCK(mp);
 return (error);
}
