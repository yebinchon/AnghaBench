
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tries; } ;
struct datalink {int stayonline; scalar_t__ state; scalar_t__ reconnect_tries; TYPE_1__ dial; } ;


 scalar_t__ DATALINK_LCP ;

void
datalink_DontHangup(struct datalink *dl)
{
  dl->dial.tries = -1;
  dl->reconnect_tries = 0;
  dl->stayonline = dl->state >= DATALINK_LCP ? 1 : 0;
}
