
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnode {int dummy; } ;
struct ucred {int dummy; } ;
struct TYPE_2__ {int ru_inblock; } ;
struct thread {TYPE_1__ td_ru; int td_proc; } ;
struct buf {int b_flags; void (* b_ckhashcalc ) (struct buf*) ;int b_blkno; int b_iooffset; struct ucred* b_rcred; int b_ioflags; int b_iocmd; } ;
typedef int daddr_t ;


 int BIO_ERROR ;
 int BIO_READ ;
 int B_CACHE ;
 int B_CKHASH ;
 int B_INVAL ;
 int CTR3 (int ,char*,struct vnode*,int ,int) ;
 int GB_CKHASH ;
 int GB_NOSPARSE ;
 int KTR_BUF ;
 struct ucred* NOCRED ;
 int PROC_LOCK (int ) ;
 int PROC_UNLOCK (int ) ;
 int breada (struct vnode*,int *,int*,int,struct ucred*,int,void (*) (struct buf*)) ;
 int brelse (struct buf*) ;
 int bstrategy (struct buf*) ;
 int bufwait (struct buf*) ;
 struct ucred* crhold (struct ucred*) ;
 struct thread* curthread ;
 int dbtob (int ) ;
 int getblkx (struct vnode*,int ,int,int ,int ,int,struct buf**) ;
 int racct_add_buf (int ,struct buf*,int ) ;
 scalar_t__ racct_enable ;
 int vfs_busy_pages (struct buf*,int ) ;

int
breadn_flags(struct vnode *vp, daddr_t blkno, int size, daddr_t *rablkno,
    int *rabsize, int cnt, struct ucred *cred, int flags,
    void (*ckhashfunc)(struct buf *), struct buf **bpp)
{
 struct buf *bp;
 struct thread *td;
 int error, readwait, rv;

 CTR3(KTR_BUF, "breadn(%p, %jd, %d)", vp, blkno, size);
 td = curthread;




 error = getblkx(vp, blkno, size, 0, 0, flags, &bp);
 if (error != 0) {
  *bpp = ((void*)0);
  return (error);
 }
 flags &= ~GB_NOSPARSE;
 *bpp = bp;




 readwait = 0;
 if ((bp->b_flags & B_CACHE) == 0) {







  td->td_ru.ru_inblock++;
  bp->b_iocmd = BIO_READ;
  bp->b_flags &= ~B_INVAL;
  if ((flags & GB_CKHASH) != 0) {
   bp->b_flags |= B_CKHASH;
   bp->b_ckhashcalc = ckhashfunc;
  }
  bp->b_ioflags &= ~BIO_ERROR;
  if (bp->b_rcred == NOCRED && cred != NOCRED)
   bp->b_rcred = crhold(cred);
  vfs_busy_pages(bp, 0);
  bp->b_iooffset = dbtob(bp->b_blkno);
  bstrategy(bp);
  ++readwait;
 }




 breada(vp, rablkno, rabsize, cnt, cred, flags, ckhashfunc);

 rv = 0;
 if (readwait) {
  rv = bufwait(bp);
  if (rv != 0) {
   brelse(bp);
   *bpp = ((void*)0);
  }
 }
 return (rv);
}
