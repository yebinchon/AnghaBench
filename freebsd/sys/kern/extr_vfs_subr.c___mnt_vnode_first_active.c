
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {struct mount* v_mount; int v_type; } ;
struct mount {int mnt_listmtx; int mnt_activevnodelist; } ;


 int MNT_ILOCK (struct mount*) ;
 int MNT_IUNLOCK (struct mount*) ;
 int MNT_REF (struct mount*) ;
 int M_VNODE_MARKER ;
 int M_WAITOK ;
 int M_ZERO ;
 struct vnode* TAILQ_FIRST (int *) ;
 int TAILQ_INSERT_BEFORE (struct vnode*,struct vnode*,int ) ;
 int VMARKER ;
 struct vnode* malloc (int,int ,int) ;
 int mnt_vnode_markerfree_active (struct vnode**,struct mount*) ;
 struct vnode* mnt_vnode_next_active (struct vnode**,struct mount*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int v_actfreelist ;

struct vnode *
__mnt_vnode_first_active(struct vnode **mvp, struct mount *mp)
{
 struct vnode *vp;

 *mvp = malloc(sizeof(struct vnode), M_VNODE_MARKER, M_WAITOK | M_ZERO);
 MNT_ILOCK(mp);
 MNT_REF(mp);
 MNT_IUNLOCK(mp);
 (*mvp)->v_type = VMARKER;
 (*mvp)->v_mount = mp;

 mtx_lock(&mp->mnt_listmtx);
 vp = TAILQ_FIRST(&mp->mnt_activevnodelist);
 if (vp == ((void*)0)) {
  mtx_unlock(&mp->mnt_listmtx);
  mnt_vnode_markerfree_active(mvp, mp);
  return (((void*)0));
 }
 TAILQ_INSERT_BEFORE(vp, *mvp, v_actfreelist);
 return (mnt_vnode_next_active(mvp, mp));
}
