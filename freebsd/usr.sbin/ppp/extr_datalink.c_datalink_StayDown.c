
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tries; } ;
struct datalink {scalar_t__ stayonline; scalar_t__ reconnect_tries; TYPE_1__ dial; } ;



void
datalink_StayDown(struct datalink *dl)
{
  dl->dial.tries = -1;
  dl->reconnect_tries = 0;
  dl->stayonline = 0;
}
