
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_fw {int refcnt; int cntr; } ;


 int M_IPFW ;
 int V_ipfw_cntr_zone ;
 int free (struct ip_fw*,int ) ;
 int uma_zfree_pcpu (int ,int ) ;

void
ipfw_free_rule(struct ip_fw *rule)
{







 if (rule->refcnt > 1)
  return;
 uma_zfree_pcpu(V_ipfw_cntr_zone, rule->cntr);
 free(rule, M_IPFW);
}
