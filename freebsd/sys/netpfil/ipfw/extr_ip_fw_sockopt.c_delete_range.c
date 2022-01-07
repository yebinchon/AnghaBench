
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct ip_fw_chain {int n_rules; int static_len; struct ip_fw** map; } ;
struct ip_fw {int dummy; } ;
struct TYPE_5__ {int flags; scalar_t__ end_rule; scalar_t__ start_rule; } ;
typedef TYPE_1__ ipfw_range_tlv ;


 int ENOMEM ;
 scalar_t__ IPFW_DEFAULT_RULE ;
 int IPFW_RCFLAG_DYNAMIC ;
 int IPFW_RCFLAG_RANGE ;
 int IPFW_UH_WLOCK (struct ip_fw_chain*) ;
 int IPFW_UH_WUNLOCK (struct ip_fw_chain*) ;
 int M_IPFW ;
 scalar_t__ RULEUSIZE0 (struct ip_fw*) ;
 int UINT32_MAX ;
 int bcopy (struct ip_fw**,struct ip_fw**,int) ;
 int free (struct ip_fw**,int ) ;
 struct ip_fw** get_map (struct ip_fw_chain*,int ,int) ;
 int ipfw_expire_dyn_states (struct ip_fw_chain*,TYPE_1__*) ;
 int ipfw_find_rule (struct ip_fw_chain*,scalar_t__,int ) ;
 scalar_t__ ipfw_is_dyn_rule (struct ip_fw*) ;
 scalar_t__ ipfw_match_range (struct ip_fw*,TYPE_1__*) ;
 int ipfw_reap_add (struct ip_fw_chain*,struct ip_fw**,struct ip_fw*) ;
 int ipfw_reap_rules (struct ip_fw*) ;
 struct ip_fw** swap_map (struct ip_fw_chain*,struct ip_fw**,int) ;
 int update_skipto_cache (struct ip_fw_chain*,struct ip_fw**) ;

__attribute__((used)) static int
delete_range(struct ip_fw_chain *chain, ipfw_range_tlv *rt, int *ndel)
{
 struct ip_fw *reap, *rule, **map;
 int end, start;
 int i, n, ndyn, ofs;

 reap = ((void*)0);
 IPFW_UH_WLOCK(chain);





 start = 0;
 end = chain->n_rules - 1;

 if ((rt->flags & IPFW_RCFLAG_RANGE) != 0) {
  start = ipfw_find_rule(chain, rt->start_rule, 0);

  if (rt->end_rule >= IPFW_DEFAULT_RULE)
   rt->end_rule = IPFW_DEFAULT_RULE - 1;
  end = ipfw_find_rule(chain, rt->end_rule, UINT32_MAX);
 }

 if (rt->flags & IPFW_RCFLAG_DYNAMIC) {



  *ndel = 0;
  ipfw_expire_dyn_states(chain, rt);
  IPFW_UH_WUNLOCK(chain);
  return (0);
 }


 map = get_map(chain, 0, 1 );
 if (map == ((void*)0)) {
  IPFW_UH_WUNLOCK(chain);
  return (ENOMEM);
 }

 n = 0;
 ndyn = 0;
 ofs = start;

 if (start > 0)
  bcopy(chain->map, map, start * sizeof(struct ip_fw *));

 for (i = start; i < end; i++) {
  rule = chain->map[i];
  if (ipfw_match_range(rule, rt) == 0) {
   map[ofs++] = rule;
   continue;
  }

  n++;
  if (ipfw_is_dyn_rule(rule) != 0)
   ndyn++;
 }

 bcopy(chain->map + end, map + ofs,
  (chain->n_rules - end) * sizeof(struct ip_fw *));

 update_skipto_cache(chain, map);

 map = swap_map(chain, map, chain->n_rules - n);

 if (ndyn > 0)
  ipfw_expire_dyn_states(chain, rt);

 for (i = start; i < end; i++) {
  rule = map[i];
  if (ipfw_match_range(rule, rt) == 0)
   continue;
  chain->static_len -= RULEUSIZE0(rule);
  ipfw_reap_add(chain, &reap, rule);
 }
 IPFW_UH_WUNLOCK(chain);

 ipfw_reap_rules(reap);
 if (map != ((void*)0))
  free(map, M_IPFW);
 *ndel = n;
 return (0);
}
