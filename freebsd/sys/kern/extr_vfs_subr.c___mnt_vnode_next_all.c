
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {scalar_t__ v_type; int v_iflag; struct mount* v_mount; } ;
struct mount {int mnt_nvnodelist; } ;


 int KASSERT (int,char*) ;
 int MA_NOTOWNED ;
 int MNT_ILOCK (struct mount*) ;
 int MNT_IUNLOCK (struct mount*) ;
 int MNT_MTX (struct mount*) ;
 int PRI_USER ;
 int TAILQ_INSERT_AFTER (int *,struct vnode*,struct vnode*,int ) ;
 struct vnode* TAILQ_NEXT (struct vnode*,int ) ;
 int TAILQ_REMOVE (int *,struct vnode*,int ) ;
 int VI_DOOMED ;
 int VI_LOCK (struct vnode*) ;
 int VI_UNLOCK (struct vnode*) ;
 scalar_t__ VMARKER ;
 int __mnt_vnode_markerfree_all (struct vnode**,struct mount*) ;
 int kern_yield (int ) ;
 int mtx_assert (int ,int ) ;
 scalar_t__ should_yield () ;
 int v_nmntvnodes ;

struct vnode *
__mnt_vnode_next_all(struct vnode **mvp, struct mount *mp)
{
 struct vnode *vp;

 if (should_yield())
  kern_yield(PRI_USER);
 MNT_ILOCK(mp);
 KASSERT((*mvp)->v_mount == mp, ("marker vnode mount list mismatch"));
 for (vp = TAILQ_NEXT(*mvp, v_nmntvnodes); vp != ((void*)0);
     vp = TAILQ_NEXT(vp, v_nmntvnodes)) {

  if (vp->v_type == VMARKER || (vp->v_iflag & VI_DOOMED) != 0)
   continue;
  VI_LOCK(vp);
  if ((vp->v_iflag & VI_DOOMED) != 0) {
   VI_UNLOCK(vp);
   continue;
  }
  break;
 }
 if (vp == ((void*)0)) {
  __mnt_vnode_markerfree_all(mvp, mp);

  mtx_assert(MNT_MTX(mp), MA_NOTOWNED);
  return (((void*)0));
 }
 TAILQ_REMOVE(&mp->mnt_nvnodelist, *mvp, v_nmntvnodes);
 TAILQ_INSERT_AFTER(&mp->mnt_nvnodelist, vp, *mvp, v_nmntvnodes);
 MNT_IUNLOCK(mp);
 return (vp);
}
