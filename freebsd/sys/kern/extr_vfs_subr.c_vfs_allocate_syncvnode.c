
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufobj {int dummy; } ;
struct vnode {struct bufobj v_bufobj; int v_vflag; int v_type; } ;
struct mount {struct vnode* mnt_syncer; } ;


 int BO_LOCK (struct bufobj*) ;
 int BO_UNLOCK (struct bufobj*) ;
 int LK_EXCLUSIVE ;
 int LK_RETRY ;
 int VNON ;
 int VOP_UNLOCK (struct vnode*,int ) ;
 int VV_FORCEINSMQ ;
 int getnewvnode (char*,struct mount*,int *,struct vnode**) ;
 int insmntque (struct vnode*,struct mount*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int panic (char*) ;
 int sync_mtx ;
 int sync_vnode_count ;
 int sync_vnodeops ;
 long syncdelay ;
 long syncer_maxdelay ;
 int vgone (struct vnode*) ;
 int vn_lock (struct vnode*,int) ;
 int vn_syncer_add_to_worklist (struct bufobj*,long) ;
 int vput (struct vnode*) ;

void
vfs_allocate_syncvnode(struct mount *mp)
{
 struct vnode *vp;
 struct bufobj *bo;
 static long start, incr, next;
 int error;


 error = getnewvnode("syncer", mp, &sync_vnodeops, &vp);
 if (error != 0)
  panic("vfs_allocate_syncvnode: getnewvnode() failed");
 vp->v_type = VNON;
 vn_lock(vp, LK_EXCLUSIVE | LK_RETRY);
 vp->v_vflag |= VV_FORCEINSMQ;
 error = insmntque(vp, mp);
 if (error != 0)
  panic("vfs_allocate_syncvnode: insmntque() failed");
 vp->v_vflag &= ~VV_FORCEINSMQ;
 VOP_UNLOCK(vp, 0);






 next += incr;
 if (next == 0 || next > syncer_maxdelay) {
  start /= 2;
  incr /= 2;
  if (start == 0) {
   start = syncer_maxdelay / 2;
   incr = syncer_maxdelay;
  }
  next = start;
 }
 bo = &vp->v_bufobj;
 BO_LOCK(bo);
 vn_syncer_add_to_worklist(bo, syncdelay > 0 ? next % syncdelay : 0);

 mtx_lock(&sync_mtx);
 sync_vnode_count++;
 if (mp->mnt_syncer == ((void*)0)) {
  mp->mnt_syncer = vp;
  vp = ((void*)0);
 }
 mtx_unlock(&sync_mtx);
 BO_UNLOCK(bo);
 if (vp != ((void*)0)) {
  vn_lock(vp, LK_EXCLUSIVE | LK_RETRY);
  vgone(vp);
  vput(vp);
 }
}
