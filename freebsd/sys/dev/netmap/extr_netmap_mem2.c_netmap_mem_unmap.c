
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netmap_obj_pool {int objtotal; int _clustsize; scalar_t__ _clustentries; } ;
struct netmap_lut {TYPE_1__* plut; } ;
struct netmap_adapter {int * pdev; int name; struct netmap_lut na_lut; } ;
typedef int bus_dma_tag_t ;
struct TYPE_2__ {scalar_t__ paddr; } ;


 int netmap_unload_map (struct netmap_adapter*,int ,scalar_t__*,int ) ;
 int nm_free_plut (TYPE_1__*) ;
 int nm_prdis (char*,int ) ;
 int nm_prerr (char*) ;

__attribute__((used)) static int
netmap_mem_unmap(struct netmap_obj_pool *p, struct netmap_adapter *na)
{
 int i, lim = p->objtotal;
 struct netmap_lut *lut = &na->na_lut;

 if (na == ((void*)0) || na->pdev == ((void*)0))
  return 0;
 nm_prdis("unmapping and freeing plut for %s", na->name);
 if (lut->plut == ((void*)0))
  return 0;
 for (i = 0; i < lim; i += p->_clustentries) {
  if (lut->plut[i].paddr)
   netmap_unload_map(na, (bus_dma_tag_t) na->pdev, &lut->plut[i].paddr, p->_clustsize);
 }
 nm_free_plut(lut->plut);
 lut->plut = ((void*)0);


 return 0;
}
