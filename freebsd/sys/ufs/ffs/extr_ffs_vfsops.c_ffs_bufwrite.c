
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cg {int cg_time; int cg_old_time; int cg_ckhash; } ;
struct buf {int b_flags; int b_vflags; int b_xflags; scalar_t__ b_data; int b_bcount; int b_dep; int b_vp; int * b_iodone; int b_offset; int b_blkno; int b_lblkno; int b_bufobj; int b_bufsize; } ;


 int BO_LOCK (int ) ;
 int BO_LOCKPTR (int ) ;
 int BO_UNLOCK (int ) ;
 int BUF_ISLOCKED (struct buf*) ;
 int BV_BKGRDERR ;
 int BV_BKGRDINPROG ;
 int BV_BKGRDWAIT ;
 int BX_BKGRDMARKER ;
 int BX_BKGRDWRITE ;
 int BX_CYLGRP ;
 int BX_FSPRIV ;
 int B_ASYNC ;
 int B_INVAL ;
 int CTR3 (int ,char*,struct buf*,int ,int) ;
 int GB_NOWAIT_BD ;
 int KASSERT (int ,char*) ;
 int KTR_BUF ;
 scalar_t__ LIST_EMPTY (int *) ;
 int PRIBIO ;
 int bdwrite (struct buf*) ;
 int bqrelse (struct buf*) ;
 int brelse (struct buf*) ;
 int buf_dirty_count_severe () ;
 int buf_mapped (struct buf*) ;
 int bufwrite (struct buf*) ;
 int bundirty (struct buf*) ;
 int calculate_crc32c (long,scalar_t__,int ) ;
 scalar_t__ dobkgrdwrite ;
 int * ffs_backgroundwritedone ;
 struct buf* geteblk (int ,int ) ;
 int memcpy (scalar_t__,scalar_t__,int ) ;
 int msleep (int*,int ,int ,char*,int ) ;
 int panic (char*) ;
 int pbgetvp (int ,struct buf*) ;
 scalar_t__ softdep_move_dependencies (struct buf*,struct buf*) ;
 int time_second ;
 int vm_page_count_severe () ;

__attribute__((used)) static int
ffs_bufwrite(struct buf *bp)
{
 struct buf *newbp;
 struct cg *cgp;

 CTR3(KTR_BUF, "bufwrite(%p) vp %p flags %X", bp, bp->b_vp, bp->b_flags);
 if (bp->b_flags & B_INVAL) {
  brelse(bp);
  return (0);
 }

 if (!BUF_ISLOCKED(bp))
  panic("bufwrite: buffer is not busy???");





 BO_LOCK(bp->b_bufobj);
 if (bp->b_vflags & BV_BKGRDINPROG) {
  if (bp->b_flags & B_ASYNC) {
   BO_UNLOCK(bp->b_bufobj);
   bdwrite(bp);
   return (0);
  }
  bp->b_vflags |= BV_BKGRDWAIT;
  msleep(&bp->b_xflags, BO_LOCKPTR(bp->b_bufobj), PRIBIO,
      "bwrbg", 0);
  if (bp->b_vflags & BV_BKGRDINPROG)
   panic("bufwrite: still writing");
 }
 bp->b_vflags &= ~BV_BKGRDERR;
 BO_UNLOCK(bp->b_bufobj);
 if (dobkgrdwrite && (bp->b_xflags & BX_BKGRDWRITE) &&
     (bp->b_flags & B_ASYNC) &&
     !vm_page_count_severe() &&
     !buf_dirty_count_severe()) {
  KASSERT(bp->b_iodone == ((void*)0),
      ("bufwrite: needs chained iodone (%p)", bp->b_iodone));


  newbp = geteblk(bp->b_bufsize, GB_NOWAIT_BD);
  if (newbp == ((void*)0))
   goto normal_write;

  KASSERT(buf_mapped(bp), ("Unmapped cg"));
  memcpy(newbp->b_data, bp->b_data, bp->b_bufsize);
  BO_LOCK(bp->b_bufobj);
  bp->b_vflags |= BV_BKGRDINPROG;
  BO_UNLOCK(bp->b_bufobj);
  newbp->b_xflags |=
      (bp->b_xflags & BX_FSPRIV) | BX_BKGRDMARKER;
  newbp->b_lblkno = bp->b_lblkno;
  newbp->b_blkno = bp->b_blkno;
  newbp->b_offset = bp->b_offset;
  newbp->b_iodone = ffs_backgroundwritedone;
  newbp->b_flags |= B_ASYNC;
  newbp->b_flags &= ~B_INVAL;
  pbgetvp(bp->b_vp, newbp);
  bundirty(bp);
  if ((bp->b_xflags & BX_CYLGRP) != 0) {
   cgp = (struct cg *)bp->b_data;
   cgp->cg_ckhash = 0;
   cgp->cg_ckhash =
       calculate_crc32c(~0L, bp->b_data, bp->b_bcount);
  }
  bqrelse(bp);
  bp = newbp;
 } else

  bundirty(bp);



normal_write:



 if ((bp->b_xflags & BX_CYLGRP) != 0) {
  cgp = (struct cg *)bp->b_data;
  cgp->cg_old_time = cgp->cg_time = time_second;
 }
 return (bufwrite(bp));
}
