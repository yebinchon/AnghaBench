
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_fw_chain {int * idxmap_back; int * idxmap; } ;


 int M_IPFW ;
 int free (int *,int ) ;

void
ipfw_destroy_skipto_cache(struct ip_fw_chain *chain)
{

 if (chain->idxmap != ((void*)0))
  free(chain->idxmap, M_IPFW);
 if (chain->idxmap != ((void*)0))
  free(chain->idxmap_back, M_IPFW);
}
