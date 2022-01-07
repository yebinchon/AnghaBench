
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int WINDOW ;
struct TYPE_4__ {size_t pa_plugin; int pa_topmode; } ;
struct TYPE_3__ {int (* pl_topkeypress ) (int,void*) ;int * pl_name; int (* pl_init ) () ;int * pl_topdisplay; int (* pl_shutdown ) (int *) ;} ;


 int PMCSTAT_TOP_ACCUM ;
 int PMCSTAT_TOP_DELTA ;
 TYPE_2__ args ;
 int delwin (int *) ;
 int * newwin (int,int ,int,int ) ;
 TYPE_1__* plugins ;
 int pmcstat_changefilter () ;
 int pmcstat_mergepmc ;
 int pmcstat_npmcs ;
 int pmcstat_pause ;
 int pmcstat_pmcindex_to_name (int ) ;
 int pmcstat_pmcinfilter ;
 int pmcstat_stats_reset (int ) ;
 int stub1 (int *) ;
 int stub2 () ;
 int stub3 (int *) ;
 int stub4 () ;
 int stub5 (int,void*) ;
 int wgetch (int *) ;
 int wprintw (int *,char*,...) ;
 int wrefresh (int *) ;

int
pmcstat_keypress_log(void)
{
 int c, ret = 0;
 WINDOW *w;

 w = newwin(1, 0, 1, 0);
 c = wgetch(w);
 wprintw(w, "Key: %c => ", c);
 switch (c) {
 case 'c':
  wprintw(w, "enter mode 'd' or 'a' => ");
  c = wgetch(w);
  if (c == 'd') {
   args.pa_topmode = PMCSTAT_TOP_DELTA;
   wprintw(w, "switching to delta mode");
  } else {
   args.pa_topmode = PMCSTAT_TOP_ACCUM;
   wprintw(w, "switching to accumulation mode");
  }
  break;
 case 'm':
  pmcstat_mergepmc = !pmcstat_mergepmc;



  if (plugins[args.pa_plugin].pl_shutdown != ((void*)0))
   plugins[args.pa_plugin].pl_shutdown(((void*)0));
  pmcstat_stats_reset(0);
  if (plugins[args.pa_plugin].pl_init != ((void*)0))
   plugins[args.pa_plugin].pl_init();


  pmcstat_changefilter();
  wprintw(w, "merge PMC %s", pmcstat_mergepmc ? "on" : "off");
  break;
 case 'n':

  if (plugins[args.pa_plugin].pl_shutdown != ((void*)0))
   plugins[args.pa_plugin].pl_shutdown(((void*)0));


  do {
   args.pa_plugin++;
   if (plugins[args.pa_plugin].pl_name == ((void*)0))
    args.pa_plugin = 0;
  } while (plugins[args.pa_plugin].pl_topdisplay == ((void*)0));


  pmcstat_stats_reset(0);
  if (plugins[args.pa_plugin].pl_init != ((void*)0))
   plugins[args.pa_plugin].pl_init();
  wprintw(w, "switching to plugin %s",
      plugins[args.pa_plugin].pl_name);
  break;
 case 'p':
  pmcstat_pmcinfilter++;
  if (pmcstat_pmcinfilter >= pmcstat_npmcs)
   pmcstat_pmcinfilter = 0;
  pmcstat_changefilter();
  wprintw(w, "switching to PMC %s.%d",
      pmcstat_pmcindex_to_name(pmcstat_pmcinfilter),
      pmcstat_pmcinfilter);
  break;
 case ' ':
  pmcstat_pause = !pmcstat_pause;
  if (pmcstat_pause)
   wprintw(w, "pause => press space again to continue");
  break;
 case 'q':
  wprintw(w, "exiting...");
  ret = 1;
  break;
 default:
  if (plugins[args.pa_plugin].pl_topkeypress != ((void*)0))
   if (plugins[args.pa_plugin].pl_topkeypress(c, (void *)w))
    ret = 1;
 }

 wrefresh(w);
 delwin(w);
 return ret;
}
