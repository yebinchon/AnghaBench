
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmcpl_ct_node {int pct_color; int * pct_instr; scalar_t__ pct_instr_c; scalar_t__ pct_ninstr; int * pct_arc; scalar_t__ pct_arc_c; scalar_t__ pct_narc; scalar_t__ pct_func; int * pct_image; int * pct_sym; int pct_samples; } ;


 int EX_OSERR ;
 int PMCPL_PCT_WHITE ;
 int err (int ,char*) ;
 struct pmcpl_ct_node* malloc (int) ;
 int pmcpl_ct_samples_init (int *) ;

__attribute__((used)) static struct pmcpl_ct_node *
pmcpl_ct_node_allocate(void)
{
 struct pmcpl_ct_node *ct;

 if ((ct = malloc(sizeof(*ct))) == ((void*)0))
  err(EX_OSERR, "ERROR: Cannot allocate callgraph node");

 pmcpl_ct_samples_init(&ct->pct_samples);

 ct->pct_sym = ((void*)0);
 ct->pct_image = ((void*)0);
 ct->pct_func = 0;

 ct->pct_narc = 0;
 ct->pct_arc_c = 0;
 ct->pct_arc = ((void*)0);

 ct->pct_ninstr = 0;
 ct->pct_instr_c = 0;
 ct->pct_instr = ((void*)0);

 ct->pct_color = PMCPL_PCT_WHITE;

 return (ct);
}
