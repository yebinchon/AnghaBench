
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {struct mount* v_mount; } ;
struct mount {int mnt_nvnodelist; } ;


 int KASSERT (int,char*) ;
 int MA_OWNED ;
 int MNT_IUNLOCK (struct mount*) ;
 int MNT_MTX (struct mount*) ;
 int MNT_REL (struct mount*) ;
 int M_VNODE_MARKER ;
 int TAILQ_REMOVE (int *,struct vnode*,int ) ;
 int free (struct vnode*,int ) ;
 int mtx_assert (int ,int ) ;
 int v_nmntvnodes ;

void
__mnt_vnode_markerfree_all(struct vnode **mvp, struct mount *mp)
{

 if (*mvp == ((void*)0)) {
  MNT_IUNLOCK(mp);
  return;
 }

 mtx_assert(MNT_MTX(mp), MA_OWNED);

 KASSERT((*mvp)->v_mount == mp, ("marker vnode mount list mismatch"));
 TAILQ_REMOVE(&mp->mnt_nvnodelist, *mvp, v_nmntvnodes);
 MNT_REL(mp);
 MNT_IUNLOCK(mp);
 free(*mvp, M_VNODE_MARKER);
 *mvp = ((void*)0);
}
