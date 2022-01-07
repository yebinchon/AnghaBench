
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct mqueue {scalar_t__ len; struct mbuf* top; struct mbuf* last; } ;
struct mbuf {struct mbuf* m_nextpkt; } ;


 int LogDEBUG ;
 int LogERROR ;
 int log_Printf (int ,char*,int ) ;

struct mbuf *
m_dequeue(struct mqueue *q)
{
  struct mbuf *bp;

  log_Printf(LogDEBUG, "m_dequeue: queue len = %lu\n", (u_long)q->len);
  bp = q->top;
  if (bp) {
    q->top = q->top->m_nextpkt;
    q->len--;
    if (q->top == ((void*)0)) {
      q->last = q->top;
      if (q->len)
 log_Printf(LogERROR, "m_dequeue: Not zero (%lu)!!!\n",
                   (u_long)q->len);
    }
    bp->m_nextpkt = ((void*)0);
  }

  return bp;
}
