
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mqueue {scalar_t__ len; } ;
struct link {struct mqueue* Queue; } ;


 struct mqueue* LINK_HIGHQ (struct link*) ;
 int LogDEBUG ;
 int log_Printf (int ,char*) ;
 int m_dequeue (struct mqueue*) ;
 int m_enqueue (struct mqueue*,int ) ;

void
link_SequenceQueue(struct link *l)
{
  struct mqueue *queue, *highest;

  log_Printf(LogDEBUG, "link_SequenceQueue\n");

  highest = LINK_HIGHQ(l);
  for (queue = l->Queue; queue < highest; queue++)
    while (queue->len)
      m_enqueue(highest, m_dequeue(queue));
}
