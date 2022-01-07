
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pmcstat_target {int pt_pid; } ;
struct TYPE_2__ {int pa_flags; int pa_targets; } ;


 int EX_OSERR ;
 int FLAG_HAS_COMMANDLINE ;
 int SIGINT ;
 struct pmcstat_target* SLIST_FIRST (int *) ;
 TYPE_1__ args ;
 int assert (int) ;
 int err (int ,char*) ;
 scalar_t__ kill (int ,int ) ;

void
pmcstat_kill_process(void)
{
 struct pmcstat_target *pt;

 assert(args.pa_flags & FLAG_HAS_COMMANDLINE);





 pt = SLIST_FIRST(&args.pa_targets);
 assert(pt != ((void*)0));

 if (kill(pt->pt_pid, SIGINT) != 0)
  err(EX_OSERR, "ERROR: cannot signal child process");
}
