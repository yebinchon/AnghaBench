
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct buf {int b_flags; } ;
struct TYPE_2__ {int td_pflags; } ;


 int BKVAMASK ;
 int B_INVAL ;
 int GB_NOWAIT_BD ;
 int TDP_BUFNEED ;
 int allocbuf (struct buf*,int) ;
 int bufdomain (struct buf*) ;
 int bufspace_release (int ,int) ;
 TYPE_1__* curthread ;
 struct buf* getnewbuf (int *,int ,int ,int,int) ;

struct buf *
geteblk(int size, int flags)
{
 struct buf *bp;
 int maxsize;

 maxsize = (size + BKVAMASK) & ~BKVAMASK;
 while ((bp = getnewbuf(((void*)0), 0, 0, maxsize, flags)) == ((void*)0)) {
  if ((flags & GB_NOWAIT_BD) &&
      (curthread->td_pflags & TDP_BUFNEED) != 0)
   return (((void*)0));
 }
 allocbuf(bp, size);
 bufspace_release(bufdomain(bp), maxsize);
 bp->b_flags |= B_INVAL;
 return (bp);
}
