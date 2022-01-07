
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufv {int bv_root; } ;
struct bufobj {int dummy; } ;
struct buf {scalar_t__ b_lblkno; int b_flags; struct bufobj* b_bufobj; } ;
typedef scalar_t__ daddr_t ;


 int ASSERT_BO_LOCKED (struct bufobj*) ;
 int BO_LOCKPTR (struct bufobj*) ;
 int BO_RLOCK (struct bufobj*) ;
 struct buf* BUF_PCTRIE_LOOKUP_GE (int *,scalar_t__) ;
 int BUF_TIMELOCK (struct buf*,int,int ,char*,int ,int ) ;
 int B_MANAGED ;
 int B_NOREUSE ;
 int B_RELBUF ;
 int B_VMIO ;
 int ENOLCK ;
 int KASSERT (int,char*) ;
 int LK_EXCLUSIVE ;
 int LK_INTERLOCK ;
 int LK_SLEEPFAIL ;
 int brelse (struct buf*) ;
 int bremfree (struct buf*) ;

int
bnoreuselist(struct bufv *bufv, struct bufobj *bo, daddr_t startn, daddr_t endn)
{
 struct buf *bp;
 int error;
 daddr_t lblkno;

 ASSERT_BO_LOCKED(bo);

 for (lblkno = startn;;) {
again:
  bp = BUF_PCTRIE_LOOKUP_GE(&bufv->bv_root, lblkno);
  if (bp == ((void*)0) || bp->b_lblkno >= endn ||
      bp->b_lblkno < startn)
   break;
  error = BUF_TIMELOCK(bp, LK_EXCLUSIVE | LK_SLEEPFAIL |
      LK_INTERLOCK, BO_LOCKPTR(bo), "brlsfl", 0, 0);
  if (error != 0) {
   BO_RLOCK(bo);
   if (error == ENOLCK)
    goto again;
   return (error);
  }
  KASSERT(bp->b_bufobj == bo,
      ("bp %p wrong b_bufobj %p should be %p",
      bp, bp->b_bufobj, bo));
  lblkno = bp->b_lblkno + 1;
  if ((bp->b_flags & B_MANAGED) == 0)
   bremfree(bp);
  bp->b_flags |= B_RELBUF;






  if ((bp->b_flags & B_VMIO) != 0)
   bp->b_flags |= B_NOREUSE;
  brelse(bp);
  BO_RLOCK(bo);
 }
 return (0);
}
