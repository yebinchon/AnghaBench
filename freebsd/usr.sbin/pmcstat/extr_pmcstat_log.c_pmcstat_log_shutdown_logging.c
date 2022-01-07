
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int args ;
 int plugins ;
 int pmcstat_shutdown_logging (int *,int ,int *) ;
 int pmcstat_stats ;

void
pmcstat_log_shutdown_logging(void)
{

 pmcstat_shutdown_logging(&args, plugins, &pmcstat_stats);
}
