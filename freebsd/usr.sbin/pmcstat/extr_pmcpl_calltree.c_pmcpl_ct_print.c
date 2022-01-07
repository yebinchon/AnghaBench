
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pmcpl_ct_sample {int dummy; } ;
typedef int name ;
struct TYPE_2__ {int pa_graphfile; } ;


 int PMCPL_CT_SAMPLE (int,struct pmcpl_ct_sample*) ;
 TYPE_1__ args ;
 int fprintf (int ,char*,...) ;
 int pmcpl_ct_bfs (int ) ;
 int pmcpl_ct_expand_inline () ;
 int pmcpl_ct_fixup_pmcname (char*) ;
 int pmcpl_ct_root ;
 int pmcpl_ct_samples_free (struct pmcpl_ct_sample*) ;
 int pmcpl_ct_samples_root (struct pmcpl_ct_sample*) ;
 int pmcstat_npmcs ;
 char* pmcstat_pmcindex_to_name (int) ;
 int snprintf (char*,int,char*,char*,int) ;

__attribute__((used)) static void
pmcpl_ct_print(void)
{
 int i;
 char name[40];
 struct pmcpl_ct_sample rsamples;

 pmcpl_ct_samples_root(&rsamples);
 pmcpl_ct_expand_inline();

 fprintf(args.pa_graphfile,
  "version: 1\n"
  "creator: pmcstat\n"
  "positions: instr line\n"
  "events:");
 for (i=0; i<pmcstat_npmcs; i++) {
  snprintf(name, sizeof(name), "%s_%d",
      pmcstat_pmcindex_to_name(i), i);
  pmcpl_ct_fixup_pmcname(name);
  fprintf(args.pa_graphfile, " %s", name);
 }
 fprintf(args.pa_graphfile, "\nsummary:");
 for (i=0; i<pmcstat_npmcs ; i++)
  fprintf(args.pa_graphfile, " %u",
      PMCPL_CT_SAMPLE(i, &rsamples));
 fprintf(args.pa_graphfile, "\n");
 pmcpl_ct_bfs(pmcpl_ct_root);
 pmcpl_ct_samples_free(&rsamples);
}
