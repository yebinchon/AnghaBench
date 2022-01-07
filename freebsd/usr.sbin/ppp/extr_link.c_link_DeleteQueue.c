
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mqueue {scalar_t__ top; } ;
struct link {struct mqueue* Queue; } ;


 struct mqueue* LINK_HIGHQ (struct link*) ;
 int m_dequeue (struct mqueue*) ;
 int m_freem (int ) ;

void
link_DeleteQueue(struct link *l)
{
  struct mqueue *queue, *highest;

  highest = LINK_HIGHQ(l);
  for (queue = l->Queue; queue <= highest; queue++)
    while (queue->top)
      m_freem(m_dequeue(queue));
}
