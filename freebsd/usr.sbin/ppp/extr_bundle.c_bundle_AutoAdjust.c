
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct datalink {scalar_t__ state; int name; TYPE_1__* physical; struct datalink* next; } ;
struct TYPE_4__ {int mp; } ;
struct bundle {TYPE_2__ ncp; struct datalink* links; } ;
struct TYPE_3__ {scalar_t__ type; } ;


 int AUTO_DOWN ;
 int AUTO_UP ;
 int CLOSE_STAYDOWN ;
 scalar_t__ DATALINK_CLOSED ;
 scalar_t__ DATALINK_OPEN ;
 int LogPHASE ;
 scalar_t__ PHYS_AUTO ;
 int datalink_Close (struct datalink*,int ) ;
 int datalink_Up (struct datalink*,int,int) ;
 int log_Printf (int ,char*,int,int ) ;
 int mp_CheckAutoloadTimer (int *) ;

void
bundle_AutoAdjust(struct bundle *bundle, int percent, int what)
{
  struct datalink *dl, *choice, *otherlinkup;

  choice = otherlinkup = ((void*)0);
  for (dl = bundle->links; dl; dl = dl->next)
    if (dl->physical->type == PHYS_AUTO) {
      if (dl->state == DATALINK_OPEN) {
        if (what == AUTO_DOWN) {
          if (choice)
            otherlinkup = choice;
          choice = dl;
        }
      } else if (dl->state == DATALINK_CLOSED) {
        if (what == AUTO_UP) {
          choice = dl;
          break;
        }
      } else {

        choice = ((void*)0);
        break;
      }
    } else if (dl->state == DATALINK_OPEN && what == AUTO_DOWN)
      otherlinkup = dl;

  if (choice) {
    if (what == AUTO_UP) {
      log_Printf(LogPHASE, "%d%% saturation -> Opening link ``%s''\n",
                 percent, choice->name);
      datalink_Up(choice, 1, 1);
      mp_CheckAutoloadTimer(&bundle->ncp.mp);
    } else if (otherlinkup) {
      log_Printf(LogPHASE, "%d%% saturation -> Closing link ``%s''\n",
                 percent, choice->name);
      datalink_Close(choice, CLOSE_STAYDOWN);
      mp_CheckAutoloadTimer(&bundle->ncp.mp);
    }
  }
}
