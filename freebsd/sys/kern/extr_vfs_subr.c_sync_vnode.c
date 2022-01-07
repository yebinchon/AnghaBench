
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct thread {int dummy; } ;
struct synclist {int dummy; } ;
struct mount {int dummy; } ;
struct bufobj {int bo_flag; } ;


 int BO_LOCK (struct bufobj*) ;
 int BO_ONWORKLST ;
 int BO_UNLOCK (struct bufobj*) ;
 struct bufobj* LIST_FIRST (struct synclist*) ;
 int LK_EXCLUSIVE ;
 int LK_RETRY ;
 int MNT_LAZY ;
 scalar_t__ VI_TRYLOCK (struct vnode*) ;
 int VI_UNLOCK (struct vnode*) ;
 int VOP_FSYNC (struct vnode*,int ,struct thread*) ;
 scalar_t__ VOP_ISLOCKED (struct vnode*) ;
 int VOP_UNLOCK (struct vnode*,int ) ;
 int V_NOWAIT ;
 struct vnode* bo2vnode (struct bufobj*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int sync_mtx ;
 int syncdelay ;
 int vdrop (struct vnode*) ;
 int vholdl (struct vnode*) ;
 int vn_finished_write (struct mount*) ;
 int vn_lock (struct vnode*,int) ;
 scalar_t__ vn_start_write (struct vnode*,struct mount**,int ) ;
 int vn_syncer_add_to_worklist (struct bufobj*,int ) ;

__attribute__((used)) static int
sync_vnode(struct synclist *slp, struct bufobj **bo, struct thread *td)
{
 struct vnode *vp;
 struct mount *mp;

 *bo = LIST_FIRST(slp);
 if (*bo == ((void*)0))
  return (0);
 vp = bo2vnode(*bo);
 if (VOP_ISLOCKED(vp) != 0 || VI_TRYLOCK(vp) == 0)
  return (1);






 vholdl(vp);
 mtx_unlock(&sync_mtx);
 VI_UNLOCK(vp);
 if (vn_start_write(vp, &mp, V_NOWAIT) != 0) {
  vdrop(vp);
  mtx_lock(&sync_mtx);
  return (*bo == LIST_FIRST(slp));
 }
 vn_lock(vp, LK_EXCLUSIVE | LK_RETRY);
 (void) VOP_FSYNC(vp, MNT_LAZY, td);
 VOP_UNLOCK(vp, 0);
 vn_finished_write(mp);
 BO_LOCK(*bo);
 if (((*bo)->bo_flag & BO_ONWORKLST) != 0) {






  vn_syncer_add_to_worklist(*bo, syncdelay);
 }
 BO_UNLOCK(*bo);
 vdrop(vp);
 mtx_lock(&sync_mtx);
 return (0);
}
