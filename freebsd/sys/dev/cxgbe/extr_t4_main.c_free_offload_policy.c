
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct t4_offload_policy* bf_insns; } ;
struct t4_offload_policy {int nrules; struct t4_offload_policy* rule; TYPE_1__ bpf_prog; } ;
struct offload_rule {int nrules; struct offload_rule* rule; TYPE_1__ bpf_prog; } ;


 int M_CXGBE ;
 int free (struct t4_offload_policy*,int ) ;

__attribute__((used)) static void
free_offload_policy(struct t4_offload_policy *op)
{
 struct offload_rule *r;
 int i;

 if (op == ((void*)0))
  return;

 r = &op->rule[0];
 for (i = 0; i < op->nrules; i++, r++) {
  free(r->bpf_prog.bf_insns, M_CXGBE);
 }
 free(op->rule, M_CXGBE);
 free(op, M_CXGBE);
}
