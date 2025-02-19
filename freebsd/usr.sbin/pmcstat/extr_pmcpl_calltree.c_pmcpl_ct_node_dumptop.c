
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmcpl_ct_sample {int dummy; } ;
struct pmcpl_ct_node {scalar_t__ pct_color; int pct_narc; struct pmcpl_ct_arc* pct_arc; } ;
struct pmcpl_ct_arc {struct pmcpl_ct_node* pcta_child; int pcta_samples; } ;


 int PMCPL_CT_MAXCOL ;
 int PMCPL_CT_MAXLINE ;
 scalar_t__ PMCPL_CT_SAMPLE (int,int *) ;
 scalar_t__ PMCPL_CT_SAMPLEP (int,int *) ;
 void* PMCPL_PCT_BLACK ;
 scalar_t__ PMCPL_PCT_GREY ;
 struct pmcpl_ct_node*** pmcpl_ct_topscreen ;
 scalar_t__ pmcstat_threshold ;

__attribute__((used)) static int
pmcpl_ct_node_dumptop(int pmcin, struct pmcpl_ct_node *ct,
    struct pmcpl_ct_sample *rsamples, int x, int *y)
{
 int i, terminal;
 struct pmcpl_ct_arc *arc;

 if (ct->pct_color == PMCPL_PCT_GREY)
  return 0;

 if (x >= PMCPL_CT_MAXCOL) {
  pmcpl_ct_topscreen[x][*y] = ((void*)0);
  return 1;
 }
 pmcpl_ct_topscreen[x][*y] = ct;






 terminal = 1;
 for (i = 0; i < ct->pct_narc; i++) {
  arc = &ct->pct_arc[i];
  if (arc->pcta_child->pct_color != PMCPL_PCT_GREY &&
      PMCPL_CT_SAMPLE(pmcin,
      &arc->pcta_samples) != 0 &&
      PMCPL_CT_SAMPLEP(pmcin,
      &arc->pcta_samples) > pmcstat_threshold) {
   terminal = 0;
   break;
  }
 }

 if (ct->pct_narc == 0 || terminal) {
  pmcpl_ct_topscreen[x+1][*y] = ((void*)0);
  if (*y >= PMCPL_CT_MAXLINE)
   return 1;
  *y = *y + 1;
  for (i=0; i < x; i++)
   pmcpl_ct_topscreen[i][*y] =
       pmcpl_ct_topscreen[i][*y - 1];
  return 0;
 }

 ct->pct_color = PMCPL_PCT_GREY;
 for (i = 0; i < ct->pct_narc; i++) {
  if (PMCPL_CT_SAMPLE(pmcin,
      &ct->pct_arc[i].pcta_samples) == 0)
   continue;
  if (PMCPL_CT_SAMPLEP(pmcin,
      &ct->pct_arc[i].pcta_samples) > pmcstat_threshold) {
   if (pmcpl_ct_node_dumptop(pmcin,
           ct->pct_arc[i].pcta_child,
           rsamples, x+1, y)) {
    ct->pct_color = PMCPL_PCT_BLACK;
    return 1;
   }
  }
 }
 ct->pct_color = PMCPL_PCT_BLACK;

 return 0;
}
