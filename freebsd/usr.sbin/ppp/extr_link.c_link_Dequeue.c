
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct mbuf {int dummy; } ;
struct link {TYPE_1__* Queue; } ;
struct TYPE_2__ {scalar_t__ len; } ;


 int LINK_QUEUES (struct link*) ;
 int LogDEBUG ;
 int log_Printf (int ,char*,int,int ) ;
 struct mbuf* m_dequeue (TYPE_1__*) ;

struct mbuf *
link_Dequeue(struct link *l)
{
  int pri;
  struct mbuf *bp;

  for (bp = ((void*)0), pri = LINK_QUEUES(l) - 1; pri >= 0; pri--)
    if (l->Queue[pri].len) {
      bp = m_dequeue(l->Queue + pri);
      log_Printf(LogDEBUG, "link_Dequeue: Dequeued from queue %d,"
                " containing %lu more packets\n", pri,
                (u_long)l->Queue[pri].len);
      break;
    }

  return bp;
}
