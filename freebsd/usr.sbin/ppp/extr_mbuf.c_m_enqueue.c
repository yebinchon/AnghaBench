
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mqueue {scalar_t__ len; struct mbuf* top; struct mbuf* last; } ;
struct mbuf {struct mbuf* m_nextpkt; } ;


 int LogDEBUG ;
 int log_Printf (int ,char*,unsigned long) ;

void
m_enqueue(struct mqueue *queue, struct mbuf *bp)
{
  if (bp != ((void*)0)) {
    if (queue->last) {
      queue->last->m_nextpkt = bp;
      queue->last = bp;
    } else
      queue->last = queue->top = bp;
    queue->len++;
    log_Printf(LogDEBUG, "m_enqueue: len = %lu\n", (unsigned long)queue->len);
  }
}
