
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buf {long b_runningbufspace; } ;


 int KASSERT (int,char*) ;
 long atomic_fetchadd_long (int *,long) ;
 long lorunningspace ;
 int runningbufspace ;
 int runningwakeup () ;

void
runningbufwakeup(struct buf *bp)
{
 long space, bspace;

 bspace = bp->b_runningbufspace;
 if (bspace == 0)
  return;
 space = atomic_fetchadd_long(&runningbufspace, -bspace);
 KASSERT(space >= bspace, ("runningbufspace underflow %ld %ld",
     space, bspace));
 bp->b_runningbufspace = 0;




 if (space < lorunningspace)
  return;
 if (space - bspace > lorunningspace)
  return;
 runningwakeup();
}
