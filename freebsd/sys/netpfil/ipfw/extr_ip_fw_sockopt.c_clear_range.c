
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct ip_fw_chain {int n_rules; struct ip_fw** map; } ;
struct ip_fw {int dummy; } ;
struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ ipfw_range_tlv ;


 int IPFW_RCFLAG_DEFAULT ;
 int IPFW_UH_WLOCK (struct ip_fw_chain*) ;
 int IPFW_UH_WUNLOCK (struct ip_fw_chain*) ;
 int clear_counters (struct ip_fw*,int) ;
 scalar_t__ ipfw_match_range (struct ip_fw*,TYPE_1__*) ;

__attribute__((used)) static int
clear_range(struct ip_fw_chain *chain, ipfw_range_tlv *rt, int log_only)
{
 struct ip_fw *rule;
 int num;
 int i;

 num = 0;
 rt->flags |= IPFW_RCFLAG_DEFAULT;

 IPFW_UH_WLOCK(chain);
 for (i = 0; i < chain->n_rules; i++) {
  rule = chain->map[i];
  if (ipfw_match_range(rule, rt) == 0)
   continue;
  clear_counters(rule, log_only);
  num++;
 }
 IPFW_UH_WUNLOCK(chain);

 return (num);
}
