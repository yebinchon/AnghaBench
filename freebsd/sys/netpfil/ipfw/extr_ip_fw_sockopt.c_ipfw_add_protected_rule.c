
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_fw_chain {int n_rules; int static_len; scalar_t__ id; int map; } ;
struct ip_fw {scalar_t__ id; int set; int rulenum; } ;


 int ENOMEM ;
 int IPFW_DEFAULT_RULE ;
 int IPFW_UH_WUNLOCK (struct ip_fw_chain*) ;
 int M_IPFW ;
 int RESVD_SET ;
 scalar_t__ RULEUSIZE0 (struct ip_fw*) ;
 int bcopy (int ,struct ip_fw**,int) ;
 int free (struct ip_fw**,int ) ;
 struct ip_fw** get_map (struct ip_fw_chain*,int,int) ;
 struct ip_fw** swap_map (struct ip_fw_chain*,struct ip_fw**,int) ;

int
ipfw_add_protected_rule(struct ip_fw_chain *chain, struct ip_fw *rule,
    int locked)
{
 struct ip_fw **map;

 map = get_map(chain, 1, locked);
 if (map == ((void*)0))
  return (ENOMEM);
 if (chain->n_rules > 0)
  bcopy(chain->map, map,
      chain->n_rules * sizeof(struct ip_fw *));
 map[chain->n_rules] = rule;
 rule->rulenum = IPFW_DEFAULT_RULE;
 rule->set = RESVD_SET;
 rule->id = chain->id + 1;

 map = swap_map(chain, map, chain->n_rules + 1);
 chain->static_len += RULEUSIZE0(rule);
 IPFW_UH_WUNLOCK(chain);
 free(map, M_IPFW);
 return (0);
}
