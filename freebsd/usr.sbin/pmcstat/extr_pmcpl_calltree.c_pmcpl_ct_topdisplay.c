
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmcpl_ct_sample {int dummy; } ;


 int PMCSTAT_PRINTW (char*,...) ;
 int pmcpl_ct_node_cleartag () ;
 scalar_t__ pmcpl_ct_node_dumptop (int ,int ,struct pmcpl_ct_sample*,int ,int*) ;
 int pmcpl_ct_node_printtop (struct pmcpl_ct_sample*,int ,scalar_t__) ;
 int pmcpl_ct_root ;
 int pmcpl_ct_samples_free (struct pmcpl_ct_sample*) ;
 int pmcpl_ct_samples_root (struct pmcpl_ct_sample*) ;
 int *** pmcpl_ct_topscreen ;
 scalar_t__ pmcstat_displayheight ;
 int pmcstat_pmcinfilter ;

void
pmcpl_ct_topdisplay(void)
{
 int y;
 struct pmcpl_ct_sample r, *rsamples;

 rsamples = &r;
 pmcpl_ct_samples_root(rsamples);
 pmcpl_ct_node_cleartag();

 PMCSTAT_PRINTW("%5.5s %s\n", "%SAMP", "CALLTREE");

 y = 0;
 if (pmcpl_ct_node_dumptop(pmcstat_pmcinfilter,
     pmcpl_ct_root, rsamples, 0, &y))
  PMCSTAT_PRINTW("...\n");
 pmcpl_ct_topscreen[1][y] = ((void*)0);

 pmcpl_ct_node_printtop(rsamples,
     pmcstat_pmcinfilter, pmcstat_displayheight - 2);

 pmcpl_ct_samples_free(rsamples);
}
