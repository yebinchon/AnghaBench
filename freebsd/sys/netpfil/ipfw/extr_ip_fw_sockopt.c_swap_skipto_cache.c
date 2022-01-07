
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_fw_chain {int* idxmap; int* idxmap_back; } ;


 int IPFW_UH_WLOCK_ASSERT (struct ip_fw_chain*) ;
 int IPFW_WLOCK_ASSERT (struct ip_fw_chain*) ;

__attribute__((used)) static void
swap_skipto_cache(struct ip_fw_chain *chain)
{
 int *map;

 IPFW_UH_WLOCK_ASSERT(chain);
 IPFW_WLOCK_ASSERT(chain);

 map = chain->idxmap;
 chain->idxmap = chain->idxmap_back;
 chain->idxmap_back = map;
}
