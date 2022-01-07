
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct rule_check_info {scalar_t__ object_opcodes; scalar_t__ urule_numoff; scalar_t__ urule; struct ip_fw* krule; } ;
struct ip_fw_chain {int n_rules; int static_len; scalar_t__ id; int map; } ;
struct ip_fw {int rulenum; scalar_t__ id; } ;
typedef scalar_t__ caddr_t ;


 int ENOSPC ;
 int IPFW_DEFAULT_RULE ;
 int IPFW_UH_WLOCK (struct ip_fw_chain*) ;
 int IPFW_UH_WUNLOCK (struct ip_fw_chain*) ;
 int M_IPFW ;
 scalar_t__ RULEUSIZE0 (struct ip_fw*) ;
 int V_autoinc_step ;
 int bcopy (int ,struct ip_fw**,int) ;
 int free (struct ip_fw**,int ) ;
 struct ip_fw** get_map (struct ip_fw_chain*,int,int ) ;
 int ipfw_find_rule (struct ip_fw_chain*,int,int ) ;
 int rewrite_rule_uidx (struct ip_fw_chain*,struct rule_check_info*) ;
 struct ip_fw** swap_map (struct ip_fw_chain*,struct ip_fw**,int) ;
 int unref_rule_objects (struct ip_fw_chain*,struct ip_fw*) ;
 int update_skipto_cache (struct ip_fw_chain*,struct ip_fw**) ;

__attribute__((used)) static int
commit_rules(struct ip_fw_chain *chain, struct rule_check_info *rci, int count)
{
 int error, i, insert_before, tcount;
 uint16_t rulenum, *pnum;
 struct rule_check_info *ci;
 struct ip_fw *krule;
 struct ip_fw **map;


 tcount = 0;
 for (ci = rci, i = 0; i < count; ci++, i++) {
  if (ci->object_opcodes == 0)
   continue;






  error = rewrite_rule_uidx(chain, ci);
  if (error != 0) {






   if (tcount > 0) {






    IPFW_UH_WLOCK(chain);
    while (ci != rci) {
     ci--;
     if (ci->object_opcodes == 0)
      continue;
     unref_rule_objects(chain,ci->krule);

    }
    IPFW_UH_WUNLOCK(chain);

   }

   return (error);
  }

  tcount++;
 }


 map = get_map(chain, count, 0 );
 if (map == ((void*)0)) {
  if (tcount > 0) {

   IPFW_UH_WLOCK(chain);
   for (ci = rci, i = 0; i < count; ci++, i++) {
    if (ci->object_opcodes == 0)
     continue;

    unref_rule_objects(chain, ci->krule);
   }
   IPFW_UH_WUNLOCK(chain);
  }

  return (ENOSPC);
 }

 if (V_autoinc_step < 1)
  V_autoinc_step = 1;
 else if (V_autoinc_step > 1000)
  V_autoinc_step = 1000;


 ci = rci;
 krule = ci->krule;
 rulenum = krule->rulenum;


 insert_before = rulenum ? rulenum + 1 : IPFW_DEFAULT_RULE;
 i = ipfw_find_rule(chain, insert_before, 0);

 if (i > 0)
  bcopy(chain->map, map, i * sizeof(struct ip_fw *));
 map[i] = krule;

 bcopy(chain->map + i, map + i + 1,
  sizeof(struct ip_fw *) *(chain->n_rules - i));
 if (rulenum == 0) {

  rulenum = i > 0 ? map[i-1]->rulenum : 0;
  if (rulenum < IPFW_DEFAULT_RULE - V_autoinc_step)
   rulenum += V_autoinc_step;
  krule->rulenum = rulenum;

  pnum = (uint16_t *)((caddr_t)ci->urule + ci->urule_numoff);
  *pnum = rulenum;
 }

 krule->id = chain->id + 1;
 update_skipto_cache(chain, map);
 map = swap_map(chain, map, chain->n_rules + 1);
 chain->static_len += RULEUSIZE0(krule);
 IPFW_UH_WUNLOCK(chain);
 if (map)
  free(map, M_IPFW);
 return (0);
}
