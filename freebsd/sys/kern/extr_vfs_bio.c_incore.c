
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufobj {int dummy; } ;
struct buf {int dummy; } ;
typedef int daddr_t ;


 int BO_RLOCK (struct bufobj*) ;
 int BO_RUNLOCK (struct bufobj*) ;
 struct buf* gbincore (struct bufobj*,int ) ;

struct buf *
incore(struct bufobj *bo, daddr_t blkno)
{
 struct buf *bp;

 BO_RLOCK(bo);
 bp = gbincore(bo, blkno);
 BO_RUNLOCK(bo);
 return (bp);
}
