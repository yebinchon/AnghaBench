
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef long u_quad_t ;
struct bufobj {int dummy; } ;
struct vnode {struct bufobj v_bufobj; TYPE_2__* v_mount; } ;
struct ucred {int dummy; } ;
struct TYPE_3__ {int ru_inblock; } ;
struct thread {TYPE_1__ td_ru; int td_proc; } ;
struct buf {int b_flags; long b_offset; long b_bufsize; int b_blkno; void* b_iooffset; int * b_iodone; int b_ioflags; void* b_iocmd; } ;
typedef long off_t ;
typedef int daddr_t ;
struct TYPE_4__ {long mnt_iosize_max; } ;


 int BIO_ERROR ;
 void* BIO_READ ;
 int BO_RLOCK (struct bufobj*) ;
 int BO_RUNLOCK (struct bufobj*) ;
 int BUF_KERNPROC (struct buf*) ;
 scalar_t__ BUF_LOCK (struct buf*,int,int *) ;
 int BUF_UNLOCK (struct buf*) ;
 int B_ASYNC ;
 int B_CACHE ;
 int B_CLUSTER ;
 int B_DELWRI ;
 int B_INVAL ;
 int B_RAM ;
 int GB_NOSPARSE ;
 int GB_UNMAPPED ;
 int KASSERT (int,char*) ;
 int LK_EXCLUSIVE ;
 int LK_NOWAIT ;
 scalar_t__ NOOFFSET ;
 int PROC_LOCK (int ) ;
 int PROC_UNLOCK (int ) ;
 int VOP_BMAP (struct vnode*,int,int *,int*,int*,int *) ;
 int bqrelse (struct buf*) ;
 int brelse (struct buf*) ;
 int bstrategy (struct buf*) ;
 int bufwait (struct buf*) ;
 struct buf* cluster_rbuild (struct vnode*,long,int,int,long,int,int,struct buf*) ;
 struct thread* curthread ;
 void* dbtob (int) ;
 struct buf* gbincore (struct bufobj*,int) ;
 struct buf* getblk (struct vnode*,int,long,int ,int ,int) ;
 int getblkx (struct vnode*,int,long,int ,int ,int,struct buf**) ;
 int howmany (long,long) ;
 int min (int,int) ;
 int nbuf ;
 int racct_add_buf (int ,struct buf*,int ) ;
 scalar_t__ racct_enable ;
 int read_max ;
 long read_min ;
 int unmapped_buf_allowed ;
 int vfs_busy_pages (struct buf*,int ) ;

int
cluster_read(struct vnode *vp, u_quad_t filesize, daddr_t lblkno, long size,
    struct ucred *cred, long totread, int seqcount, int gbflags,
    struct buf **bpp)
{
 struct buf *bp, *rbp, *reqbp;
 struct bufobj *bo;
 struct thread *td;
 daddr_t blkno, origblkno;
 int maxra, racluster;
 int error, ncontig;
 int i;

 error = 0;
 td = curthread;
 bo = &vp->v_bufobj;
 if (!unmapped_buf_allowed)
  gbflags &= ~GB_UNMAPPED;





 racluster = vp->v_mount->mnt_iosize_max / size;
 maxra = seqcount;
 maxra = min(read_max, maxra);
 maxra = min(nbuf/8, maxra);
 if (((u_quad_t)(lblkno + maxra + 1) * size) > filesize)
  maxra = (filesize / size) - lblkno;




 error = getblkx(vp, lblkno, size, 0, 0, gbflags, &bp);
 if (error != 0) {
  *bpp = ((void*)0);
  return (error);
 }
 gbflags &= ~GB_NOSPARSE;
 origblkno = lblkno;
 *bpp = reqbp = bp;






 if (bp->b_flags & B_CACHE) {
  if (!seqcount) {
   return 0;
  } else if ((bp->b_flags & B_RAM) == 0) {
   return 0;
  } else {
   bp->b_flags &= ~B_RAM;
   BO_RLOCK(bo);
   for (i = 1; i < maxra; i++) {




    rbp = gbincore(&vp->v_bufobj, lblkno+i);
    if (rbp == ((void*)0) || (rbp->b_flags & B_INVAL))
     break;






    if ((((i % racluster) == (racluster - 1)) ||
        (i == (maxra - 1)))
        && (0 == BUF_LOCK(rbp,
     LK_EXCLUSIVE | LK_NOWAIT, ((void*)0)))) {
     rbp->b_flags |= B_RAM;
     BUF_UNLOCK(rbp);
    }
   }
   BO_RUNLOCK(bo);
   if (i >= maxra) {
    return 0;
   }
   lblkno += i;
  }
  reqbp = bp = ((void*)0);




 } else {
  off_t firstread = bp->b_offset;
  int nblks;
  long minread;

  KASSERT(bp->b_offset != NOOFFSET,
      ("cluster_read: no buffer offset"));

  ncontig = 0;




  minread = read_min * size;
  if (minread > totread)
   totread = minread;





  if (firstread + totread > filesize)
   totread = filesize - firstread;
  nblks = howmany(totread, size);
  if (nblks > racluster)
   nblks = racluster;




  if (nblks > 1) {
       error = VOP_BMAP(vp, lblkno, ((void*)0),
    &blkno, &ncontig, ((void*)0));



   if (error || blkno == -1)
    ncontig = 0;
  }





  if (ncontig) {

   ncontig = min(ncontig + 1, nblks);
   if (ncontig < nblks)
    nblks = ncontig;
   bp = cluster_rbuild(vp, filesize, lblkno,
       blkno, size, nblks, gbflags, bp);
   lblkno += (bp->b_bufsize / size);
  } else {
   bp->b_flags |= B_RAM;
   bp->b_iocmd = BIO_READ;
   lblkno += 1;
  }
 }




 if (bp) {
  if ((bp->b_flags & B_CLUSTER) == 0) {
   vfs_busy_pages(bp, 0);
  }
  bp->b_flags &= ~B_INVAL;
  bp->b_ioflags &= ~BIO_ERROR;
  if ((bp->b_flags & B_ASYNC) || bp->b_iodone != ((void*)0))
   BUF_KERNPROC(bp);
  bp->b_iooffset = dbtob(bp->b_blkno);
  bstrategy(bp);







  td->td_ru.ru_inblock++;
 }




 while (lblkno < (origblkno + maxra)) {
  error = VOP_BMAP(vp, lblkno, ((void*)0), &blkno, &ncontig, ((void*)0));
  if (error)
   break;

  if (blkno == -1)
   break;






  if (ncontig) {
   ncontig = min(ncontig + 1, racluster);
   rbp = cluster_rbuild(vp, filesize, lblkno, blkno,
       size, ncontig, gbflags, ((void*)0));
   lblkno += (rbp->b_bufsize / size);
   if (rbp->b_flags & B_DELWRI) {
    bqrelse(rbp);
    continue;
   }
  } else {
   rbp = getblk(vp, lblkno, size, 0, 0, gbflags);
   lblkno += 1;
   if (rbp->b_flags & B_DELWRI) {
    bqrelse(rbp);
    continue;
   }
   rbp->b_flags |= B_ASYNC | B_RAM;
   rbp->b_iocmd = BIO_READ;
   rbp->b_blkno = blkno;
  }
  if (rbp->b_flags & B_CACHE) {
   rbp->b_flags &= ~B_ASYNC;
   bqrelse(rbp);
   continue;
  }
  if ((rbp->b_flags & B_CLUSTER) == 0) {
   vfs_busy_pages(rbp, 0);
  }
  rbp->b_flags &= ~B_INVAL;
  rbp->b_ioflags &= ~BIO_ERROR;
  if ((rbp->b_flags & B_ASYNC) || rbp->b_iodone != ((void*)0))
   BUF_KERNPROC(rbp);
  rbp->b_iooffset = dbtob(rbp->b_blkno);
  bstrategy(rbp);







  td->td_ru.ru_inblock++;
 }

 if (reqbp) {




  error = bufwait(reqbp);
  if (error != 0) {
   brelse(reqbp);
   *bpp = ((void*)0);
  }
 }
 return (error);
}
