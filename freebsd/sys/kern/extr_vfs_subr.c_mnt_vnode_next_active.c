
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {scalar_t__ v_type; int v_iflag; struct mount* v_mount; } ;
struct mount {int mnt_listmtx; int mnt_activevnodelist; } ;


 int ASSERT_VI_LOCKED (struct vnode*,char*) ;
 int KASSERT (int,char*) ;
 int MA_OWNED ;
 int TAILQ_INSERT_AFTER (int *,struct vnode*,struct vnode*,int ) ;
 struct vnode* TAILQ_NEXT (struct vnode*,int ) ;
 int TAILQ_REMOVE (int *,struct vnode*,int ) ;
 int VI_ACTIVE ;
 int VI_DOOMED ;
 int VI_TRYLOCK (struct vnode*) ;
 int VI_UNLOCK (struct vnode*) ;
 scalar_t__ VMARKER ;
 int mnt_vnode_markerfree_active (struct vnode**,struct mount*) ;
 int mnt_vnode_next_active_relock (struct vnode*,struct mount*,struct vnode*) ;
 int mtx_assert (int *,int ) ;
 int mtx_unlock (int *) ;
 int v_actfreelist ;

__attribute__((used)) static struct vnode *
mnt_vnode_next_active(struct vnode **mvp, struct mount *mp)
{
 struct vnode *vp, *nvp;

 mtx_assert(&mp->mnt_listmtx, MA_OWNED);
 KASSERT((*mvp)->v_mount == mp, ("marker vnode mount list mismatch"));
restart:
 vp = TAILQ_NEXT(*mvp, v_actfreelist);
 while (vp != ((void*)0)) {
  if (vp->v_type == VMARKER) {
   vp = TAILQ_NEXT(vp, v_actfreelist);
   continue;
  }





  if (!VI_TRYLOCK(vp) &&
      !mnt_vnode_next_active_relock(*mvp, mp, vp))
   goto restart;
  KASSERT(vp->v_type != VMARKER, ("locked marker %p", vp));
  KASSERT(vp->v_mount == mp || vp->v_mount == ((void*)0),
      ("alien vnode on the active list %p %p", vp, mp));
  if (vp->v_mount == mp && (vp->v_iflag & VI_DOOMED) == 0)
   break;
  nvp = TAILQ_NEXT(vp, v_actfreelist);
  VI_UNLOCK(vp);
  vp = nvp;
 }
 TAILQ_REMOVE(&mp->mnt_activevnodelist, *mvp, v_actfreelist);


 if (vp == ((void*)0)) {
  mtx_unlock(&mp->mnt_listmtx);
  mnt_vnode_markerfree_active(mvp, mp);
  return (((void*)0));
 }
 TAILQ_INSERT_AFTER(&mp->mnt_activevnodelist, vp, *mvp, v_actfreelist);
 mtx_unlock(&mp->mnt_listmtx);
 ASSERT_VI_LOCKED(vp, "active iter");
 KASSERT((vp->v_iflag & VI_ACTIVE) != 0, ("Non-active vp %p", vp));
 return (vp);
}
