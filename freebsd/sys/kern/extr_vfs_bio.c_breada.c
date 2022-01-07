
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnode {int dummy; } ;
struct ucred {int dummy; } ;
struct TYPE_2__ {int ru_inblock; } ;
struct thread {TYPE_1__ td_ru; } ;
struct buf {int b_flags; void (* b_ckhashcalc ) (struct buf*) ;int b_blkno; int b_iooffset; struct ucred* b_rcred; int b_iocmd; int b_ioflags; } ;
typedef int daddr_t ;


 int BIO_ERROR ;
 int BIO_READ ;
 int BUF_KERNPROC (struct buf*) ;
 int B_ASYNC ;
 int B_CACHE ;
 int B_CKHASH ;
 int B_INVAL ;
 int GB_CKHASH ;
 struct ucred* NOCRED ;
 int PROC_LOCK (int ) ;
 int PROC_UNLOCK (int ) ;
 int brelse (struct buf*) ;
 int bstrategy (struct buf*) ;
 struct ucred* crhold (struct ucred*) ;
 int curproc ;
 struct thread* curthread ;
 int dbtob (int ) ;
 struct buf* getblk (struct vnode*,int ,int,int ,int ,int ) ;
 scalar_t__ inmem (struct vnode*,int ) ;
 int racct_add_buf (int ,struct buf*,int ) ;
 scalar_t__ racct_enable ;
 int vfs_busy_pages (struct buf*,int ) ;

__attribute__((used)) static void
breada(struct vnode * vp, daddr_t * rablkno, int * rabsize, int cnt,
    struct ucred * cred, int flags, void (*ckhashfunc)(struct buf *))
{
 struct buf *rabp;
 struct thread *td;
 int i;

 td = curthread;

 for (i = 0; i < cnt; i++, rablkno++, rabsize++) {
  if (inmem(vp, *rablkno))
   continue;
  rabp = getblk(vp, *rablkno, *rabsize, 0, 0, 0);
  if ((rabp->b_flags & B_CACHE) != 0) {
   brelse(rabp);
   continue;
  }







  td->td_ru.ru_inblock++;
  rabp->b_flags |= B_ASYNC;
  rabp->b_flags &= ~B_INVAL;
  if ((flags & GB_CKHASH) != 0) {
   rabp->b_flags |= B_CKHASH;
   rabp->b_ckhashcalc = ckhashfunc;
  }
  rabp->b_ioflags &= ~BIO_ERROR;
  rabp->b_iocmd = BIO_READ;
  if (rabp->b_rcred == NOCRED && cred != NOCRED)
   rabp->b_rcred = crhold(cred);
  vfs_busy_pages(rabp, 0);
  BUF_KERNPROC(rabp);
  rabp->b_iooffset = dbtob(rabp->b_blkno);
  bstrategy(rabp);
 }
}
