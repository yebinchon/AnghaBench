
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct ip_fw_chain {int n_rules; struct ip_fw** map; } ;
struct ip_fw {int set; } ;
struct TYPE_5__ {int new_set; } ;
typedef TYPE_1__ ipfw_range_tlv ;


 int IPFW_UH_WLOCK (struct ip_fw_chain*) ;
 int IPFW_UH_WUNLOCK (struct ip_fw_chain*) ;
 scalar_t__ ipfw_match_range (struct ip_fw*,TYPE_1__*) ;
 int move_objects (struct ip_fw_chain*,TYPE_1__*) ;

__attribute__((used)) static int
move_range(struct ip_fw_chain *chain, ipfw_range_tlv *rt)
{
 struct ip_fw *rule;
 int i;

 IPFW_UH_WLOCK(chain);
 if ((i = move_objects(chain, rt)) != 0) {
  IPFW_UH_WUNLOCK(chain);
  return (i);
 }


 for (i = 0; i < chain->n_rules; i++) {
  rule = chain->map[i];
  if (ipfw_match_range(rule, rt) == 0)
   continue;
  rule->set = rt->new_set;
 }

 IPFW_UH_WUNLOCK(chain);

 return (0);
}
