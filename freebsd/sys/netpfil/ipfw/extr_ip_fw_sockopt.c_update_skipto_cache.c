
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_fw_chain {int* idxmap_back; } ;
struct ip_fw {int rulenum; } ;


 int IPFW_UH_WLOCK_ASSERT (struct ip_fw_chain*) ;

__attribute__((used)) static void
update_skipto_cache(struct ip_fw_chain *chain, struct ip_fw **map)
{
 int *smap, rulenum;
 int i, mi;

 IPFW_UH_WLOCK_ASSERT(chain);

 mi = 0;
 rulenum = map[mi]->rulenum;
 smap = chain->idxmap_back;

 if (smap == ((void*)0))
  return;

 for (i = 0; i < 65536; i++) {
  smap[i] = mi;

  if (i != rulenum || i == 65535)
   continue;

  rulenum = map[++mi]->rulenum;
  while (rulenum == i)
   rulenum = map[++mi]->rulenum;
 }
}
