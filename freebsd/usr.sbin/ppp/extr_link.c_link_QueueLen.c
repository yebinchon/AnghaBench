
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct link {TYPE_1__* Queue; } ;
struct TYPE_2__ {scalar_t__ len; } ;


 unsigned int LINK_QUEUES (struct link*) ;

size_t
link_QueueLen(struct link *l)
{
  unsigned i;
  size_t len;

  for (i = 0, len = 0; i < LINK_QUEUES(l); i++)
    len += l->Queue[i].len;

  return len;
}
