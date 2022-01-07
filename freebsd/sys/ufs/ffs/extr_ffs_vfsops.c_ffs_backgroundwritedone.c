
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufobj {int dummy; } ;
struct buf {int b_ioflags; int b_vflags; int b_xflags; int b_flags; int b_dep; int b_lblkno; struct bufobj* b_bufobj; } ;


 int BIO_ERROR ;
 int BO_LOCK (struct bufobj*) ;
 int BO_UNLOCK (struct bufobj*) ;
 int BV_BKGRDERR ;
 int BV_BKGRDINPROG ;
 int BV_BKGRDWAIT ;
 int B_CACHE ;
 int B_INVAL ;
 int B_NOCACHE ;
 int KASSERT (int,char*) ;
 int LIST_EMPTY (int *) ;
 int buf_complete (struct buf*) ;
 int bufdone (struct buf*) ;
 struct buf* gbincore (struct bufobj*,int ) ;
 int panic (char*) ;
 int pbrelvp (struct buf*) ;
 int softdep_move_dependencies (struct buf*,struct buf*) ;
 int wakeup (int *) ;

__attribute__((used)) static void
ffs_backgroundwritedone(struct buf *bp)
{
 struct bufobj *bufobj;
 struct buf *origbp;




 bufobj = bp->b_bufobj;
 BO_LOCK(bufobj);
 if ((origbp = gbincore(bp->b_bufobj, bp->b_lblkno)) == ((void*)0))
  panic("backgroundwritedone: lost buffer");





 if ((bp->b_ioflags & BIO_ERROR) != 0)
  origbp->b_vflags |= BV_BKGRDERR;
 BO_UNLOCK(bufobj);



 if (!LIST_EMPTY(&bp->b_dep) && (bp->b_ioflags & BIO_ERROR) == 0)
  buf_complete(bp);
 bp->b_flags |= B_NOCACHE;
 bp->b_flags &= ~B_CACHE;
 pbrelvp(bp);







 if ((bp->b_ioflags & BIO_ERROR) != 0)
  bp->b_flags |= B_INVAL;
 bufdone(bp);
 BO_LOCK(bufobj);






 KASSERT((origbp->b_vflags & BV_BKGRDINPROG),
     ("backgroundwritedone: lost buffer2"));
 origbp->b_vflags &= ~BV_BKGRDINPROG;
 if (origbp->b_vflags & BV_BKGRDWAIT) {
  origbp->b_vflags &= ~BV_BKGRDWAIT;
  wakeup(&origbp->b_xflags);
 }
 BO_UNLOCK(bufobj);
}
