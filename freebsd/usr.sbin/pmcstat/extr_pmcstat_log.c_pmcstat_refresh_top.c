
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pmcstat_pmcrecord {double pr_samples; float pr_dubious_frames; int pr_pmcname; } ;
typedef int pmcname ;
struct TYPE_4__ {size_t pa_plugin; } ;
struct TYPE_3__ {int (* pl_topdisplay ) () ;} ;


 int PMCSTAT_ATTROFF (int) ;
 int PMCSTAT_ATTRON (int) ;
 int PMCSTAT_ATTRPERCENT (float) ;
 int PMCSTAT_PRINTBEGIN () ;
 int PMCSTAT_PRINTEND () ;
 int PMCSTAT_PRINTW (char*,...) ;
 TYPE_2__ args ;
 TYPE_1__* plugins ;
 scalar_t__ pmcstat_mergepmc ;
 scalar_t__ pmcstat_pause ;
 struct pmcstat_pmcrecord* pmcstat_pmcindex_to_pmcr (int) ;
 int pmcstat_pmcinfilter ;
 char* pmcstat_string_unintern (int ) ;
 double ps_samples_period ;
 int snprintf (char*,int,char*,char*,...) ;
 int stub1 () ;

__attribute__((used)) static void
pmcstat_refresh_top(void)
{
 int v_attrs;
 float v;
 char pmcname[40];
 struct pmcstat_pmcrecord *pmcpr;


 if (pmcstat_pause)
  return;


 pmcpr = pmcstat_pmcindex_to_pmcr(pmcstat_pmcinfilter);
 if (pmcpr == ((void*)0))
  return;


 if (pmcstat_mergepmc)
  snprintf(pmcname, sizeof(pmcname), "[%s]",
      pmcstat_string_unintern(pmcpr->pr_pmcname));
 else
  snprintf(pmcname, sizeof(pmcname), "%s.%d",
      pmcstat_string_unintern(pmcpr->pr_pmcname),
      pmcstat_pmcinfilter);


 if (ps_samples_period > 0)
  v = (pmcpr->pr_samples * 100.0) / ps_samples_period;
 else
  v = 0.;
 v_attrs = PMCSTAT_ATTRPERCENT(v);

 PMCSTAT_PRINTBEGIN();
 PMCSTAT_PRINTW("PMC: %s Samples: %u ",
     pmcname,
     pmcpr->pr_samples);
 PMCSTAT_ATTRON(v_attrs);
 PMCSTAT_PRINTW("(%.1f%%) ", v);
 PMCSTAT_ATTROFF(v_attrs);
 PMCSTAT_PRINTW(", %u unresolved\n\n",
     pmcpr->pr_dubious_frames);
 if (plugins[args.pa_plugin].pl_topdisplay != ((void*)0))
  plugins[args.pa_plugin].pl_topdisplay();
 PMCSTAT_PRINTEND();
}
