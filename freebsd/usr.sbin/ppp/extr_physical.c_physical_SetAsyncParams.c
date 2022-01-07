
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct physical {int async; TYPE_1__* handler; } ;
struct TYPE_2__ {void (* setasyncparams ) (struct physical*,int ,int ) ;} ;


 int async_SetLinkParams (int *,int ,int ) ;
 void stub1 (struct physical*,int ,int ) ;

void
physical_SetAsyncParams(struct physical *p, u_int32_t mymap, u_int32_t hismap)
{
  if (p->handler && p->handler->setasyncparams)
    return (*p->handler->setasyncparams)(p, mymap, hismap);

  async_SetLinkParams(&p->async, mymap, hismap);
}
