
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_14__ {int list; } ;
struct TYPE_11__ {scalar_t__ tbl; int dyn; } ;
struct TYPE_12__ {int type; TYPE_4__ p; } ;
struct TYPE_13__ {TYPE_5__ addr; } ;
struct TYPE_8__ {scalar_t__ tbl; int dyn; } ;
struct TYPE_9__ {int type; TYPE_1__ p; } ;
struct TYPE_10__ {TYPE_2__ addr; } ;
struct pf_rule {scalar_t__ pqid; scalar_t__ qid; int src_nodes; int states_tot; int states_cur; TYPE_7__ rpool; scalar_t__ kif; scalar_t__ overload_tbl; TYPE_6__ dst; TYPE_3__ src; scalar_t__ match_tag; scalar_t__ tag; } ;


 int M_PFRULE ;


 int PF_RULES_WASSERT () ;
 int V_pf_tags ;
 int counter_u64_free (int ) ;
 int free (struct pf_rule*,int ) ;
 int pf_anchor_remove (struct pf_rule*) ;
 int pf_empty_pool (int *) ;
 int pf_qid_unref (scalar_t__) ;
 int pfi_dynaddr_remove (int ) ;
 int pfi_kif_unref (scalar_t__) ;
 int pfr_detach_table (scalar_t__) ;
 int tag_unref (int *,scalar_t__) ;

void
pf_free_rule(struct pf_rule *rule)
{

 PF_RULES_WASSERT();

 if (rule->tag)
  tag_unref(&V_pf_tags, rule->tag);
 if (rule->match_tag)
  tag_unref(&V_pf_tags, rule->match_tag);





 switch (rule->src.addr.type) {
 case 129:
  pfi_dynaddr_remove(rule->src.addr.p.dyn);
  break;
 case 128:
  pfr_detach_table(rule->src.addr.p.tbl);
  break;
 }
 switch (rule->dst.addr.type) {
 case 129:
  pfi_dynaddr_remove(rule->dst.addr.p.dyn);
  break;
 case 128:
  pfr_detach_table(rule->dst.addr.p.tbl);
  break;
 }
 if (rule->overload_tbl)
  pfr_detach_table(rule->overload_tbl);
 if (rule->kif)
  pfi_kif_unref(rule->kif);
 pf_anchor_remove(rule);
 pf_empty_pool(&rule->rpool.list);
 counter_u64_free(rule->states_cur);
 counter_u64_free(rule->states_tot);
 counter_u64_free(rule->src_nodes);
 free(rule, M_PFRULE);
}
