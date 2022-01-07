
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct mount {int mnt_listmtx; int mnt_activevnodelist; } ;


 int TAILQ_REMOVE (int *,struct vnode*,int ) ;
 int mnt_vnode_markerfree_active (struct vnode**,struct mount*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int v_actfreelist ;

void
__mnt_vnode_markerfree_active(struct vnode **mvp, struct mount *mp)
{

 if (*mvp == ((void*)0))
  return;

 mtx_lock(&mp->mnt_listmtx);
 TAILQ_REMOVE(&mp->mnt_activevnodelist, *mvp, v_actfreelist);
 mtx_unlock(&mp->mnt_listmtx);
 mnt_vnode_markerfree_active(mvp, mp);
}
