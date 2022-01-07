
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_short ;
struct physical {TYPE_1__* handler; } ;
struct TYPE_2__ {int mtu; } ;



u_short
physical_DeviceMTU(struct physical *p)
{
  return p->handler ? p->handler->mtu : 0;
}
