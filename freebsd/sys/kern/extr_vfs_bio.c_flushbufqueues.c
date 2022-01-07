
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct mount {int dummy; } ;
struct bufqueue {int bq_queue; } ;
struct bufdomain {struct bufqueue bd_dirtyq; } ;
struct buf {scalar_t__ b_qindex; int b_vflags; int b_flags; struct vnode* b_vp; int b_dep; } ;


 int ASSERT_VOP_LOCKED (struct vnode*,char*) ;
 int BQ_LOCK (struct bufqueue*) ;
 int BQ_UNLOCK (struct bufqueue*) ;
 int BUF_LOCK (struct buf*,int,int *) ;
 int BUF_UNLOCK (struct buf*) ;
 int BV_BKGRDINPROG ;
 int B_DELWRI ;
 int B_INVAL ;
 int CTR3 (int ,char*,struct buf*,struct vnode*,int) ;
 int KTR_BUF ;
 int LIST_EMPTY (int *) ;
 int LK_EXCLUSIVE ;
 int LK_NOWAIT ;
 int LK_TRYUPGRADE ;
 int M_TEMP ;
 int M_WAITOK ;
 int M_ZERO ;
 scalar_t__ QUEUE_SENTINEL ;
 int TAILQ_INSERT_AFTER (int *,struct buf*,struct buf*,int ) ;
 int TAILQ_INSERT_HEAD (int *,struct buf*,int ) ;
 struct buf* TAILQ_NEXT (struct buf*,int ) ;
 int TAILQ_REMOVE (int *,struct buf*,int ) ;
 int VOP_ISLOCKED (struct vnode*) ;
 int VOP_UNLOCK (struct vnode*,int ) ;
 int V_NOWAIT ;
 int b_freelist ;
 int brelse (struct buf*) ;
 int bremfree (struct buf*) ;
 int bremfreef (struct buf*) ;
 scalar_t__ buf_countdeps (struct buf*,int ) ;
 scalar_t__ bufdaemonproc ;
 int bwrite (struct buf*) ;
 int counter_u64_add (int ,int) ;
 scalar_t__ curproc ;
 int flushwithdeps ;
 int free (struct buf*,int ) ;
 scalar_t__ hirunningspace ;
 struct buf* malloc (int,int ,int) ;
 int maybe_yield () ;
 int notbufdflushes ;
 scalar_t__ runningbufspace ;
 int vfs_bio_awrite (struct buf*) ;
 int vn_finished_write (struct mount*) ;
 int vn_lock (struct vnode*,int) ;
 scalar_t__ vn_start_write (struct vnode*,struct mount**,int ) ;
 int waitrunningbufspace () ;

__attribute__((used)) static int
flushbufqueues(struct vnode *lvp, struct bufdomain *bd, int target,
    int flushdeps)
{
 struct bufqueue *bq;
 struct buf *sentinel;
 struct vnode *vp;
 struct mount *mp;
 struct buf *bp;
 int hasdeps;
 int flushed;
 int error;
 bool unlock;

 flushed = 0;
 bq = &bd->bd_dirtyq;
 bp = ((void*)0);
 sentinel = malloc(sizeof(struct buf), M_TEMP, M_WAITOK | M_ZERO);
 sentinel->b_qindex = QUEUE_SENTINEL;
 BQ_LOCK(bq);
 TAILQ_INSERT_HEAD(&bq->bq_queue, sentinel, b_freelist);
 BQ_UNLOCK(bq);
 while (flushed != target) {
  maybe_yield();
  BQ_LOCK(bq);
  bp = TAILQ_NEXT(sentinel, b_freelist);
  if (bp != ((void*)0)) {
   TAILQ_REMOVE(&bq->bq_queue, sentinel, b_freelist);
   TAILQ_INSERT_AFTER(&bq->bq_queue, bp, sentinel,
       b_freelist);
  } else {
   BQ_UNLOCK(bq);
   break;
  }







  if (bp->b_qindex == QUEUE_SENTINEL || (lvp != ((void*)0) &&
      bp->b_vp != lvp)) {
   BQ_UNLOCK(bq);
   continue;
  }
  error = BUF_LOCK(bp, LK_EXCLUSIVE | LK_NOWAIT, ((void*)0));
  BQ_UNLOCK(bq);
  if (error != 0)
   continue;





  if ((bp->b_vflags & BV_BKGRDINPROG) != 0 ||
      (bp->b_flags & B_DELWRI) == 0) {
   BUF_UNLOCK(bp);
   continue;
  }
  if (bp->b_flags & B_INVAL) {
   bremfreef(bp);
   brelse(bp);
   flushed++;
   continue;
  }

  if (!LIST_EMPTY(&bp->b_dep) && buf_countdeps(bp, 0)) {
   if (flushdeps == 0) {
    BUF_UNLOCK(bp);
    continue;
   }
   hasdeps = 1;
  } else
   hasdeps = 0;
  vp = bp->b_vp;
  if (vn_start_write(vp, &mp, V_NOWAIT) != 0) {
   BUF_UNLOCK(bp);
   continue;
  }
  if (lvp == ((void*)0)) {
   unlock = 1;
   error = vn_lock(vp, LK_EXCLUSIVE | LK_NOWAIT);
  } else {
   ASSERT_VOP_LOCKED(vp, "getbuf");
   unlock = 0;
   error = VOP_ISLOCKED(vp) == LK_EXCLUSIVE ? 0 :
       vn_lock(vp, LK_TRYUPGRADE);
  }
  if (error == 0) {
   CTR3(KTR_BUF, "flushbufqueue(%p) vp %p flags %X",
       bp, bp->b_vp, bp->b_flags);
   if (curproc == bufdaemonproc) {
    vfs_bio_awrite(bp);
   } else {
    bremfree(bp);
    bwrite(bp);
    counter_u64_add(notbufdflushes, 1);
   }
   vn_finished_write(mp);
   if (unlock)
    VOP_UNLOCK(vp, 0);
   flushwithdeps += hasdeps;
   flushed++;





   if (curproc == bufdaemonproc &&
       runningbufspace > hirunningspace)
    waitrunningbufspace();
   continue;
  }
  vn_finished_write(mp);
  BUF_UNLOCK(bp);
 }
 BQ_LOCK(bq);
 TAILQ_REMOVE(&bq->bq_queue, sentinel, b_freelist);
 BQ_UNLOCK(bq);
 free(sentinel, M_TEMP);
 return (flushed);
}
