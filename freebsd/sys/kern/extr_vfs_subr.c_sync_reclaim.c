
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vop_reclaim_args {struct vnode* a_vp; } ;
struct bufobj {int bo_flag; } ;
struct vnode {TYPE_1__* v_mount; struct bufobj v_bufobj; } ;
struct TYPE_2__ {struct vnode* mnt_syncer; } ;


 int BO_LOCK (struct bufobj*) ;
 int BO_ONWORKLST ;
 int BO_UNLOCK (struct bufobj*) ;
 int LIST_REMOVE (struct bufobj*,int ) ;
 int bo_synclist ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int sync_mtx ;
 int sync_vnode_count ;
 int syncer_worklist_len ;

__attribute__((used)) static int
sync_reclaim(struct vop_reclaim_args *ap)
{
 struct vnode *vp = ap->a_vp;
 struct bufobj *bo;

 bo = &vp->v_bufobj;
 BO_LOCK(bo);
 mtx_lock(&sync_mtx);
 if (vp->v_mount->mnt_syncer == vp)
  vp->v_mount->mnt_syncer = ((void*)0);
 if (bo->bo_flag & BO_ONWORKLST) {
  LIST_REMOVE(bo, bo_synclist);
  syncer_worklist_len--;
  sync_vnode_count--;
  bo->bo_flag &= ~BO_ONWORKLST;
 }
 mtx_unlock(&sync_mtx);
 BO_UNLOCK(bo);

 return (0);
}
