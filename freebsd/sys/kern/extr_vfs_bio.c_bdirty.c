
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buf {int b_flags; scalar_t__ b_qindex; int b_iocmd; int * b_bufobj; int b_vp; } ;


 int BIO_WRITE ;
 int B_DELWRI ;
 int B_RELBUF ;
 int B_REMFREE ;
 int CTR3 (int ,char*,struct buf*,int ,int) ;
 int KASSERT (int,char*) ;
 int KTR_BUF ;
 scalar_t__ QUEUE_NONE ;
 int bdirtyadd (struct buf*) ;
 int reassignbuf (struct buf*) ;

void
bdirty(struct buf *bp)
{

 CTR3(KTR_BUF, "bdirty(%p) vp %p flags %X",
     bp, bp->b_vp, bp->b_flags);
 KASSERT(bp->b_bufobj != ((void*)0), ("No b_bufobj %p", bp));
 KASSERT(bp->b_flags & B_REMFREE || bp->b_qindex == QUEUE_NONE,
     ("bdirty: buffer %p still on queue %d", bp, bp->b_qindex));
 bp->b_flags &= ~(B_RELBUF);
 bp->b_iocmd = BIO_WRITE;

 if ((bp->b_flags & B_DELWRI) == 0) {
  bp->b_flags |= B_DELWRI;
  reassignbuf(bp);
  bdirtyadd(bp);
 }
}
