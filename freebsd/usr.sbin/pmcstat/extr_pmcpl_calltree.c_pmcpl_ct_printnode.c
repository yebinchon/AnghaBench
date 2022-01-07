
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pmcpl_ct_node {int dummy; } ;
struct TYPE_2__ {int pa_graphfile; } ;


 TYPE_1__ args ;
 int fprintf (int ,char*) ;
 int pmcpl_ct_node_printchild (struct pmcpl_ct_node*,int ,int ) ;
 int pmcpl_ct_node_printself (struct pmcpl_ct_node*) ;
 struct pmcpl_ct_node* pmcpl_ct_root ;
 int pmcstat_npmcs ;

__attribute__((used)) static void
pmcpl_ct_printnode(struct pmcpl_ct_node *ct)
{
 int i;

 if (ct == pmcpl_ct_root) {
  fprintf(args.pa_graphfile, "fn=root\n");
  fprintf(args.pa_graphfile, "0x0 1");
  for (i = 0; i<pmcstat_npmcs ; i++)
   fprintf(args.pa_graphfile, " 0");
  fprintf(args.pa_graphfile, "\n");
  pmcpl_ct_node_printchild(ct, 0, 0);
 } else
  pmcpl_ct_node_printself(ct);
}
