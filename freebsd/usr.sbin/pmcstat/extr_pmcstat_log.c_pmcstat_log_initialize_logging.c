
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int args ;
 int plugins ;
 int pmcstat_initialize_logging (int *,int *,int ,int *,int *) ;
 int pmcstat_kernproc ;
 int pmcstat_mergepmc ;
 int pmcstat_npmcs ;

void
pmcstat_log_initialize_logging(void)
{

 pmcstat_initialize_logging(&pmcstat_kernproc,
     &args, plugins, &pmcstat_npmcs, &pmcstat_mergepmc);
}
