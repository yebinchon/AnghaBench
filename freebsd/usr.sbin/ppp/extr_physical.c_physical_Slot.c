
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct physical {TYPE_1__* handler; } ;
struct TYPE_2__ {int (* slot ) (struct physical*) ;} ;


 int stub1 (struct physical*) ;

int
physical_Slot(struct physical *p)
{
  if (p->handler && p->handler->slot)
    return (*p->handler->slot)(p);

  return -1;
}
