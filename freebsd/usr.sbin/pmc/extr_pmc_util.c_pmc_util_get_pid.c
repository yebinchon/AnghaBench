
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmcstat_target {int pt_pid; } ;
struct pmcstat_args {int pa_flags; int pa_targets; } ;


 int FLAG_HAS_COMMANDLINE ;
 struct pmcstat_target* SLIST_FIRST (int *) ;
 int assert (int) ;

int
pmc_util_get_pid(struct pmcstat_args *args)
{
 struct pmcstat_target *pt;

 assert(args->pa_flags & FLAG_HAS_COMMANDLINE);





 pt = SLIST_FIRST(&args->pa_targets);
 return (pt->pt_pid);
}
