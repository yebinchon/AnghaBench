
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buf {scalar_t__ b_iocmd; int b_flags; int b_ioflags; int b_error; } ;


 int BIO_ERROR ;
 scalar_t__ BIO_READ ;
 int B_EINTR ;
 int EINTR ;
 int EIO ;
 int PRIBIO ;
 int bwait (struct buf*,int ,char*) ;

int
bufwait(struct buf *bp)
{
 if (bp->b_iocmd == BIO_READ)
  bwait(bp, PRIBIO, "biord");
 else
  bwait(bp, PRIBIO, "biowr");
 if (bp->b_flags & B_EINTR) {
  bp->b_flags &= ~B_EINTR;
  return (EINTR);
 }
 if (bp->b_ioflags & BIO_ERROR) {
  return (bp->b_error ? bp->b_error : EIO);
 } else {
  return (0);
 }
}
