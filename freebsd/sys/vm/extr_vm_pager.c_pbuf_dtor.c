
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buf {scalar_t__ b_rcred; scalar_t__ b_wcred; } ;


 int BUF_UNLOCK (struct buf*) ;
 scalar_t__ NOCRED ;
 int crfree (scalar_t__) ;

__attribute__((used)) static void
pbuf_dtor(void *mem, int size, void *arg)
{
 struct buf *bp = mem;

 if (bp->b_rcred != NOCRED) {
  crfree(bp->b_rcred);
  bp->b_rcred = NOCRED;
 }
 if (bp->b_wcred != NOCRED) {
  crfree(bp->b_wcred);
  bp->b_wcred = NOCRED;
 }

 BUF_UNLOCK(bp);
}
