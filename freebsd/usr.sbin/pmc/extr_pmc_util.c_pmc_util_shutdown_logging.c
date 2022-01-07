
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmcstat_args {int dummy; } ;


 int plugins ;
 int pmcstat_shutdown_logging (struct pmcstat_args*,int ,int *) ;
 int pmcstat_stats ;

void
pmc_util_shutdown_logging(struct pmcstat_args *args)
{
 pmcstat_shutdown_logging(args, plugins, &pmcstat_stats);
}
