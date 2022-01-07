
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ run; } ;
struct datalink {scalar_t__ state; scalar_t__ reconnect_tries; TYPE_2__* physical; TYPE_1__ script; } ;
struct TYPE_4__ {int type; } ;


 scalar_t__ DATALINK_READY ;
 int PHYS_BACKGROUND ;
 int PHYS_DDIAL ;
 int PHYS_DEDICATED ;
 int PHYS_DIRECT ;
 int PHYS_FOREGROUND ;
 int datalink_Up (struct datalink*,int,int) ;
 int physical_SetMode (TYPE_2__*,int) ;

int
datalink_SetMode(struct datalink *dl, int mode)
{
  if (!physical_SetMode(dl->physical, mode))
    return 0;
  if (dl->physical->type & (PHYS_DIRECT|PHYS_DEDICATED))
    dl->script.run = 0;
  if (dl->physical->type == PHYS_DIRECT)
    dl->reconnect_tries = 0;
  if (mode & (PHYS_DDIAL|PHYS_BACKGROUND|PHYS_FOREGROUND) &&
      dl->state <= DATALINK_READY)
    datalink_Up(dl, 1, 1);
  return 1;
}
