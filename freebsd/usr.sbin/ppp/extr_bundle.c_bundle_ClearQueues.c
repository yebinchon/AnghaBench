
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct datalink {int physical; struct datalink* next; } ;
struct TYPE_2__ {int timer; } ;
struct bundle {struct datalink* links; int ncp; TYPE_1__ choked; } ;


 int LogPHASE ;
 int log_Printf (int ,char*) ;
 int ncp_DeleteQueues (int *) ;
 int physical_DeleteQueue (int ) ;
 int timer_Stop (int *) ;

__attribute__((used)) static void
bundle_ClearQueues(void *v)
{
  struct bundle *bundle = (struct bundle *)v;
  struct datalink *dl;

  log_Printf(LogPHASE, "Clearing choked output queue\n");
  timer_Stop(&bundle->choked.timer);
  ncp_DeleteQueues(&bundle->ncp);
  for (dl = bundle->links; dl; dl = dl->next)
    physical_DeleteQueue(dl->physical);
}
