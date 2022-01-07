
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ pa_topmode; size_t pa_plugin; } ;
struct TYPE_3__ {int (* pl_init ) () ;int (* pl_shutdown ) (int *) ;} ;


 scalar_t__ PMCSTAT_TOP_DELTA ;
 TYPE_2__ args ;
 TYPE_1__* plugins ;
 int pmcstat_refresh_top () ;
 int pmcstat_stats_reset (int ) ;
 int stub1 (int *) ;
 int stub2 () ;

void
pmcstat_display_log(void)
{

 pmcstat_refresh_top();


 if (args.pa_topmode == PMCSTAT_TOP_DELTA) {
  if (plugins[args.pa_plugin].pl_shutdown != ((void*)0))
   plugins[args.pa_plugin].pl_shutdown(((void*)0));
  pmcstat_stats_reset(0);
  if (plugins[args.pa_plugin].pl_init != ((void*)0))
   plugins[args.pa_plugin].pl_init();
 }
}
