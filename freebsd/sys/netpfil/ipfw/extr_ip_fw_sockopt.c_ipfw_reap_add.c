
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_fw_chain {int dummy; } ;
struct ip_fw {struct ip_fw* next; } ;


 int IPFW_UH_WLOCK_ASSERT (struct ip_fw_chain*) ;
 int unref_rule_objects (struct ip_fw_chain*,struct ip_fw*) ;

void
ipfw_reap_add(struct ip_fw_chain *chain, struct ip_fw **head,
    struct ip_fw *rule)
{

 IPFW_UH_WLOCK_ASSERT(chain);


 unref_rule_objects(chain, rule);

 rule->next = *head;
 *head = rule;
}
