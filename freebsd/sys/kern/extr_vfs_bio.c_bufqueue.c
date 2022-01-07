
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bufqueue {int dummy; } ;
struct buf {int b_qindex; size_t b_subqueue; } ;
struct TYPE_2__ {struct bufqueue* bd_subq; struct bufqueue bd_dirtyq; } ;







 struct bufqueue bqempty ;
 TYPE_1__* bufdomain (struct buf*) ;
 int panic (char*,struct buf*,int) ;

__attribute__((used)) static struct bufqueue *
bufqueue(struct buf *bp)
{

 switch (bp->b_qindex) {
 case 129:

 case 128:
  return (((void*)0));
 case 130:
  return (&bqempty);
 case 131:
  return (&bufdomain(bp)->bd_dirtyq);
 case 132:
  return (&bufdomain(bp)->bd_subq[bp->b_subqueue]);
 default:
  break;
 }
 panic("bufqueue(%p): Unhandled type %d\n", bp, bp->b_qindex);
}
