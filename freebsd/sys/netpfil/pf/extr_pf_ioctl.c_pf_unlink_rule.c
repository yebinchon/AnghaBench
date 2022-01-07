
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pf_rulequeue {int dummy; } ;
struct pf_rule {int rule_flag; } ;


 int PFRULE_REFS ;
 int PF_RULES_WASSERT () ;
 int PF_UNLNKDRULES_LOCK () ;
 int PF_UNLNKDRULES_UNLOCK () ;
 int TAILQ_INSERT_TAIL (int *,struct pf_rule*,int ) ;
 int TAILQ_REMOVE (struct pf_rulequeue*,struct pf_rule*,int ) ;
 int V_pf_unlinked_rules ;
 int entries ;

__attribute__((used)) static void
pf_unlink_rule(struct pf_rulequeue *rulequeue, struct pf_rule *rule)
{

 PF_RULES_WASSERT();

 TAILQ_REMOVE(rulequeue, rule, entries);

 PF_UNLNKDRULES_LOCK();
 rule->rule_flag |= PFRULE_REFS;
 TAILQ_INSERT_TAIL(&V_pf_unlinked_rules, rule, entries);
 PF_UNLNKDRULES_UNLOCK();
}
