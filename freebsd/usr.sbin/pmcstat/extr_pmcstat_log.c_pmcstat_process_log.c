
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pa_flags; } ;


 int FLAG_DO_PRINT ;
 TYPE_1__ args ;
 int plugins ;
 int pmcstat_analyze_log (TYPE_1__*,int ,int *,int ,int ,int *,int *) ;
 int pmcstat_kernproc ;
 int pmcstat_mergepmc ;
 int pmcstat_npmcs ;
 int pmcstat_print_log () ;
 int pmcstat_stats ;
 int ps_samples_period ;

int
pmcstat_process_log(void)
{





 if (args.pa_flags & FLAG_DO_PRINT)
  return (pmcstat_print_log());
 else
  return (pmcstat_analyze_log(&args, plugins, &pmcstat_stats, pmcstat_kernproc,
      pmcstat_mergepmc, &pmcstat_npmcs, &ps_samples_period));
}
