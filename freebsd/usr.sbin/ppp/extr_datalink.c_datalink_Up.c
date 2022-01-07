
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_12__ {int run; int packetmode; } ;
struct TYPE_10__ {int max; } ;
struct TYPE_8__ {int max; } ;
struct TYPE_11__ {TYPE_4__ dial; TYPE_2__ reconnect; } ;
struct TYPE_9__ {int tries; } ;
struct datalink {int state; TYPE_6__ script; TYPE_5__ cfg; TYPE_3__ dial; TYPE_1__* physical; int reconnect_tries; int bundle; } ;
struct TYPE_7__ {int type; } ;


 int DATALINK_CARRIER ;





 int Enabled (int ,int ) ;
 int OPT_FORCE_SCRIPTS ;
 int PHASE_DEAD ;
 int PHASE_ESTABLISH ;
 int PHASE_TERMINATE ;
 int PHYS_DEDICATED ;
 int PHYS_DIRECT ;
 int bundle_NewPhase (int ,int ) ;
 int bundle_Phase (int ) ;
 int datalink_NewState (struct datalink*,int) ;

void
datalink_Up(struct datalink *dl, int runscripts, int packetmode)
{
  if (!Enabled(dl->bundle, OPT_FORCE_SCRIPTS) &&
      (dl->physical->type & (PHYS_DIRECT|PHYS_DEDICATED)))

    runscripts = 0;

  switch (dl->state) {
    case 132:
      if (bundle_Phase(dl->bundle) == PHASE_DEAD ||
          bundle_Phase(dl->bundle) == PHASE_TERMINATE)
        bundle_NewPhase(dl->bundle, PHASE_ESTABLISH);
      datalink_NewState(dl, 129);
      dl->reconnect_tries =
        dl->physical->type == PHYS_DIRECT ? 0 : dl->cfg.reconnect.max;
      dl->dial.tries = dl->cfg.dial.max;
      dl->script.run = runscripts;
      dl->script.packetmode = packetmode;
      break;

    case 129:
      if (!dl->script.run && runscripts)
        dl->script.run = 1;


    case 131:
    case 130:
    case 128:
      if (!dl->script.packetmode && packetmode) {
        dl->script.packetmode = 1;
        if (dl->state == 128) {
          dl->script.run = 0;
          datalink_NewState(dl, DATALINK_CARRIER);
        }
      }
      break;
  }
}
