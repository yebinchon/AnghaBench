
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct buf {int b_flags; int b_dirtyend; int b_error; int b_dirtyoff; } ;
typedef int off_t ;
typedef int daddr_t ;


 int B_CACHE ;
 int MAX (int,int) ;
 int MIN (int,int) ;
 int PCATCH ;
 int brelse (struct buf*) ;
 int bwrite (struct buf*) ;
 int fuse_iosize (struct vnode*) ;
 struct buf* getblk (struct vnode*,int,int,int ,int ,int ) ;
 int howmany (int,int) ;
 int v_inval_buf_range (struct vnode*,int,int,int) ;

__attribute__((used)) static int
fuse_inval_buf_range(struct vnode *vp, off_t filesize, off_t start, off_t end)
{
 struct buf *bp;
 daddr_t left_lbn, end_lbn, right_lbn;
 off_t new_filesize;
 int iosize, left_on, right_on, right_blksize;

 iosize = fuse_iosize(vp);
 left_lbn = start / iosize;
 end_lbn = howmany(end, iosize);
 left_on = start & (iosize - 1);
 if (left_on != 0) {
  bp = getblk(vp, left_lbn, iosize, PCATCH, 0, 0);
  if ((bp->b_flags & B_CACHE) != 0 && bp->b_dirtyend >= left_on) {





   bwrite(bp);
   if (bp->b_error)
    return (bp->b_error);
  } else {
   brelse(bp);
  }
 }
 right_on = end & (iosize - 1);
 if (right_on != 0) {
  right_lbn = end / iosize;
  new_filesize = MAX(filesize, end);
  right_blksize = MIN(iosize, new_filesize - iosize * right_lbn);
  bp = getblk(vp, right_lbn, right_blksize, PCATCH, 0, 0);
  if ((bp->b_flags & B_CACHE) != 0 && bp->b_dirtyoff < right_on) {





   bwrite(bp);
   if (bp->b_error)
    return (bp->b_error);
  } else {
   brelse(bp);
  }
 }

 v_inval_buf_range(vp, left_lbn, end_lbn, iosize);
 return (0);
}
