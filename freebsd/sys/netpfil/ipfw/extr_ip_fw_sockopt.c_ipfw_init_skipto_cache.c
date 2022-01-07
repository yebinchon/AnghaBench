
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_fw_chain {int* idxmap; int* idxmap_back; int map; } ;


 int IPFW_UH_WLOCK (struct ip_fw_chain*) ;
 int IPFW_UH_WUNLOCK (struct ip_fw_chain*) ;
 int IPFW_WLOCK (struct ip_fw_chain*) ;
 int IPFW_WUNLOCK (struct ip_fw_chain*) ;
 int M_IPFW ;
 int M_WAITOK ;
 int M_ZERO ;
 int free (int*,int ) ;
 int* malloc (int,int ,int) ;
 int swap_skipto_cache (struct ip_fw_chain*) ;
 int update_skipto_cache (struct ip_fw_chain*,int ) ;

void
ipfw_init_skipto_cache(struct ip_fw_chain *chain)
{
 int *idxmap, *idxmap_back;

 idxmap = malloc(65536 * sizeof(int), M_IPFW, M_WAITOK | M_ZERO);
 idxmap_back = malloc(65536 * sizeof(int), M_IPFW, M_WAITOK);







 IPFW_UH_WLOCK(chain);
 if (chain->idxmap != ((void*)0)) {
  IPFW_UH_WUNLOCK(chain);
  free(idxmap, M_IPFW);
  free(idxmap_back, M_IPFW);
  return;
 }


 chain->idxmap_back = idxmap_back;
 update_skipto_cache(chain, chain->map);
 IPFW_WLOCK(chain);

 chain->idxmap = idxmap;
 swap_skipto_cache(chain);
 IPFW_WUNLOCK(chain);
 IPFW_UH_WUNLOCK(chain);
}
