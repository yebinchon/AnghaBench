
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_fw_chain {int dummy; } ;
struct ip_fw {int refcnt; int cntr; } ;


 int M_IPFW ;
 int M_WAITOK ;
 int M_ZERO ;
 int V_ipfw_cntr_zone ;
 struct ip_fw* malloc (size_t,int ,int) ;
 int uma_zalloc_pcpu (int ,int) ;

struct ip_fw *
ipfw_alloc_rule(struct ip_fw_chain *chain, size_t rulesize)
{
 struct ip_fw *rule;

 rule = malloc(rulesize, M_IPFW, M_WAITOK | M_ZERO);
 rule->cntr = uma_zalloc_pcpu(V_ipfw_cntr_zone, M_WAITOK | M_ZERO);
 rule->refcnt = 1;

 return (rule);
}
