
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int v_iflag; scalar_t__ v_holdcnt; struct mount* v_mount; int * v_op; } ;
struct vfsops {int dummy; } ;
struct mount {struct vfsops* mnt_op; } ;


 int KASSERT (int,char*) ;
 int MA_OWNED ;
 struct vnode* TAILQ_FIRST (int *) ;
 int TAILQ_INSERT_TAIL (int *,struct vnode*,int ) ;
 int TAILQ_REMOVE (int *,struct vnode*,int ) ;
 int VI_ACTIVE ;
 int VI_FREE ;
 int VI_TRYLOCK (struct vnode*) ;
 int VI_UNLOCK (struct vnode*) ;
 int VNASSERT (int,struct vnode*,char*) ;
 int VNODE_REFCOUNT_FENCE_REL () ;
 int freevnodes ;
 int max_vnlru_free ;
 int mtx_assert (int *,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int refcount_acquire (scalar_t__*) ;
 int v_actfreelist ;
 int vdrop (struct vnode*) ;
 int vnlru_return_batches (struct vfsops*) ;
 int vnode_free_list ;
 int vnode_free_list_mtx ;
 int vtryrecycle (struct vnode*) ;

__attribute__((used)) static void
vnlru_free_locked(int count, struct vfsops *mnt_op)
{
 struct vnode *vp;
 struct mount *mp;
 bool tried_batches;

 tried_batches = 0;
 mtx_assert(&vnode_free_list_mtx, MA_OWNED);
 if (count > max_vnlru_free)
  count = max_vnlru_free;
 for (; count > 0; count--) {
  vp = TAILQ_FIRST(&vnode_free_list);




  if (vp == ((void*)0)) {
   if (tried_batches)
    break;
   mtx_unlock(&vnode_free_list_mtx);
   vnlru_return_batches(mnt_op);
   tried_batches = 1;
   mtx_lock(&vnode_free_list_mtx);
   continue;
  }

  VNASSERT(vp->v_op != ((void*)0), vp,
      ("vnlru_free: vnode already reclaimed."));
  KASSERT((vp->v_iflag & VI_FREE) != 0,
      ("Removing vnode not on freelist"));
  KASSERT((vp->v_iflag & VI_ACTIVE) == 0,
      ("Mangling active vnode"));
  TAILQ_REMOVE(&vnode_free_list, vp, v_actfreelist);
  if ((mnt_op != ((void*)0) && (mp = vp->v_mount) != ((void*)0) &&
      mp->mnt_op != mnt_op) || !VI_TRYLOCK(vp)) {
   TAILQ_INSERT_TAIL(&vnode_free_list, vp, v_actfreelist);
   continue;
  }
  VNASSERT((vp->v_iflag & VI_FREE) != 0 && vp->v_holdcnt == 0,
      vp, ("vp inconsistent on freelist"));
  freevnodes--;
  vp->v_iflag &= ~VI_FREE;
  VNODE_REFCOUNT_FENCE_REL();
  refcount_acquire(&vp->v_holdcnt);

  mtx_unlock(&vnode_free_list_mtx);
  VI_UNLOCK(vp);
  vtryrecycle(vp);





  vdrop(vp);
  mtx_lock(&vnode_free_list_mtx);
 }
}
