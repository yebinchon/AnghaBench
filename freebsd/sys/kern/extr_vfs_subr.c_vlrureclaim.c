
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnode {scalar_t__ v_type; int v_iflag; TYPE_1__* v_object; int v_cache_src; scalar_t__ v_usecount; } ;
struct mount {int mnt_nvnodelistsize; int mnt_nvnodelist; } ;
typedef int int64_t ;
struct TYPE_2__ {int resident_page_count; } ;


 int KASSERT (int,char*) ;
 int LIST_EMPTY (int *) ;
 int LK_EXCLUSIVE ;
 int LK_INTERLOCK ;
 int LK_NOWAIT ;
 int MNT_ILOCK (struct mount*) ;
 int MNT_IUNLOCK (struct mount*) ;
 int PRI_USER ;
 struct vnode* TAILQ_FIRST (int *) ;
 int TAILQ_INSERT_TAIL (int *,struct vnode*,int ) ;
 struct vnode* TAILQ_NEXT (struct vnode*,int ) ;
 int TAILQ_REMOVE (int *,struct vnode*,int ) ;
 int VI_DOOMED ;
 int VI_FREE ;
 int VI_LOCK (struct vnode*) ;
 int VI_TRYLOCK (struct vnode*) ;
 int VI_UNLOCK (struct vnode*) ;
 scalar_t__ VMARKER ;
 scalar_t__ VOP_LOCK (struct vnode*,int) ;
 int VOP_UNLOCK (struct vnode*,int ) ;
 int V_WAIT ;
 int counter_u64_add (int ,int) ;
 int desiredvnodes ;
 scalar_t__ gapvnodes ;
 int imax (int ,int) ;
 int kern_yield (int ) ;
 int recycles_count ;
 int should_yield () ;
 int v_nmntvnodes ;
 int vdrop (struct vnode*) ;
 int vdropl (struct vnode*) ;
 int vgonel (struct vnode*) ;
 int vholdl (struct vnode*) ;
 int vn_finished_write (struct mount*) ;
 int vn_start_write (int *,struct mount**,int ) ;

__attribute__((used)) static int
vlrureclaim(struct mount *mp, bool reclaim_nc_src, int trigger)
{
 struct vnode *vp;
 int count, done, target;

 done = 0;
 vn_start_write(((void*)0), &mp, V_WAIT);
 MNT_ILOCK(mp);
 count = mp->mnt_nvnodelistsize;
 target = count * (int64_t)gapvnodes / imax(desiredvnodes, 1);
 target = target / 10 + 1;
 while (count != 0 && done < target) {
  vp = TAILQ_FIRST(&mp->mnt_nvnodelist);
  while (vp != ((void*)0) && vp->v_type == VMARKER)
   vp = TAILQ_NEXT(vp, v_nmntvnodes);
  if (vp == ((void*)0))
   break;
  TAILQ_REMOVE(&mp->mnt_nvnodelist, vp, v_nmntvnodes);
  TAILQ_INSERT_TAIL(&mp->mnt_nvnodelist, vp, v_nmntvnodes);
  --count;
  if (!VI_TRYLOCK(vp))
   goto next_iter;






  if (vp->v_usecount ||
      (!reclaim_nc_src && !LIST_EMPTY(&vp->v_cache_src)) ||
      ((vp->v_iflag & VI_FREE) != 0) ||
      (vp->v_iflag & VI_DOOMED) != 0 || (vp->v_object != ((void*)0) &&
      vp->v_object->resident_page_count > trigger)) {
   VI_UNLOCK(vp);
   goto next_iter;
  }
  MNT_IUNLOCK(mp);
  vholdl(vp);
  if (VOP_LOCK(vp, LK_INTERLOCK|LK_EXCLUSIVE|LK_NOWAIT)) {
   vdrop(vp);
   goto next_iter_mntunlocked;
  }
  VI_LOCK(vp);
  if (vp->v_usecount ||
      (!reclaim_nc_src && !LIST_EMPTY(&vp->v_cache_src)) ||
      (vp->v_iflag & VI_FREE) != 0 ||
      (vp->v_object != ((void*)0) &&
      vp->v_object->resident_page_count > trigger)) {
   VOP_UNLOCK(vp, 0);
   vdropl(vp);
   goto next_iter_mntunlocked;
  }
  KASSERT((vp->v_iflag & VI_DOOMED) == 0,
      ("VI_DOOMED unexpectedly detected in vlrureclaim()"));
  counter_u64_add(recycles_count, 1);
  vgonel(vp);
  VOP_UNLOCK(vp, 0);
  vdropl(vp);
  done++;
next_iter_mntunlocked:
  if (!should_yield())
   goto relock_mnt;
  goto yield;
next_iter:
  if (!should_yield())
   continue;
  MNT_IUNLOCK(mp);
yield:
  kern_yield(PRI_USER);
relock_mnt:
  MNT_ILOCK(mp);
 }
 MNT_IUNLOCK(mp);
 vn_finished_write(mp);
 return done;
}
