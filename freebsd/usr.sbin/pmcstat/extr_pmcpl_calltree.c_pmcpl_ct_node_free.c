
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmcpl_ct_node {int pct_narc; struct pmcpl_ct_node* pct_instr; struct pmcpl_ct_node* pct_arc; int pct_samples; int pcta_callid; int pcta_samples; } ;


 int free (struct pmcpl_ct_node*) ;
 int pmcpl_ct_samples_free (int *) ;

__attribute__((used)) static void
pmcpl_ct_node_free(struct pmcpl_ct_node *ct)
{
 int i;

 for (i = 0; i < ct->pct_narc; i++) {
  pmcpl_ct_samples_free(&ct->pct_arc[i].pcta_samples);
  pmcpl_ct_samples_free(&ct->pct_arc[i].pcta_callid);
 }

 pmcpl_ct_samples_free(&ct->pct_samples);
 free(ct->pct_arc);
 free(ct->pct_instr);
 free(ct);
}
