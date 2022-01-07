
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct datalink {scalar_t__ state; struct datalink* next; int name; } ;
struct TYPE_6__ {int mp; } ;
struct TYPE_5__ {scalar_t__ sessiontime; } ;
struct bundle {struct datalink* links; TYPE_2__ ncp; TYPE_1__ radius; } ;




 scalar_t__ DATALINK_CLOSED ;
 scalar_t__ DATALINK_HANGUP ;
 int LogWARN ;
 int bundle_StopIdleTimer (struct bundle*) ;
 int bundle_StopSessionTimer (struct bundle*) ;
 int datalink_Close (struct datalink*,int) ;
 int datalink_DontHangup (struct datalink*) ;
 int datalink_StayDown (struct datalink*) ;
 int log_Printf (int ,char*,char const*) ;
 int mp_Down (int *) ;
 int ncp2initial (TYPE_2__*) ;
 int ncp_Close (TYPE_2__*) ;
 scalar_t__ ncp_LayersUnfinished (TYPE_2__*) ;
 int strcasecmp (char const*,int ) ;

void
bundle_Close(struct bundle *bundle, const char *name, int how)
{







  struct datalink *dl, *this_dl;
  int others_active;

  others_active = 0;
  this_dl = ((void*)0);

  for (dl = bundle->links; dl; dl = dl->next) {
    if (name && !strcasecmp(name, dl->name))
      this_dl = dl;
    if (name == ((void*)0) || this_dl == dl) {
      switch (how) {
        case 129:
          datalink_DontHangup(dl);
          break;
        case 128:
          datalink_StayDown(dl);
          break;
      }
    } else if (dl->state != DATALINK_CLOSED && dl->state != DATALINK_HANGUP)
      others_active++;
  }

  if (name && this_dl == ((void*)0)) {
    log_Printf(LogWARN, "%s: Invalid datalink name\n", name);
    return;
  }

  if (!others_active) {

    if (bundle->radius.sessiontime)
      bundle_StopSessionTimer(bundle);

    bundle_StopIdleTimer(bundle);
    if (ncp_LayersUnfinished(&bundle->ncp))
      ncp_Close(&bundle->ncp);
    else {
      ncp2initial(&bundle->ncp);
      mp_Down(&bundle->ncp.mp);
      for (dl = bundle->links; dl; dl = dl->next)
        datalink_Close(dl, how);
    }
  } else if (this_dl && this_dl->state != DATALINK_CLOSED &&
             this_dl->state != DATALINK_HANGUP)
    datalink_Close(this_dl, how);
}
