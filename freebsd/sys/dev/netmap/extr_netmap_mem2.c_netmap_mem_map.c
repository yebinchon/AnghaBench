
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct netmap_obj_pool {int objtotal; int _clustentries; scalar_t__ _objsize; int name; int _clustsize; TYPE_1__* lut; } ;
struct netmap_lut {TYPE_2__* plut; } ;
struct netmap_adapter {int * pdev; int name; struct netmap_lut na_lut; } ;
typedef int bus_dma_tag_t ;
struct TYPE_4__ {scalar_t__ paddr; } ;
struct TYPE_3__ {int * vaddr; } ;


 int ENOMEM ;
 int netmap_load_map (struct netmap_adapter*,int ,scalar_t__*,int *,int ) ;
 int netmap_mem_unmap (struct netmap_obj_pool*,struct netmap_adapter*) ;
 TYPE_2__* nm_alloc_plut (int) ;
 int nm_prdis (char*,int ) ;
 int nm_prerr (char*,...) ;

__attribute__((used)) static int
netmap_mem_map(struct netmap_obj_pool *p, struct netmap_adapter *na)
{
 int error = 0;
 int i, lim = p->objtotal;
 struct netmap_lut *lut = &na->na_lut;

 if (na->pdev == ((void*)0))
  return 0;
 if (lut->plut != ((void*)0)) {
  nm_prdis("plut already allocated for %s", na->name);
  return 0;
 }

 nm_prdis("allocating physical lut for %s", na->name);
 lut->plut = nm_alloc_plut(lim);
 if (lut->plut == ((void*)0)) {
  nm_prerr("Failed to allocate physical lut for %s", na->name);
  return ENOMEM;
 }

 for (i = 0; i < lim; i += p->_clustentries) {
  lut->plut[i].paddr = 0;
 }

 for (i = 0; i < lim; i += p->_clustentries) {
  int j;

  if (p->lut[i].vaddr == ((void*)0))
   continue;

  error = netmap_load_map(na, (bus_dma_tag_t) na->pdev, &lut->plut[i].paddr,
    p->lut[i].vaddr, p->_clustsize);
  if (error) {
   nm_prerr("Failed to map cluster #%d from the %s pool", i, p->name);
   break;
  }

  for (j = 1; j < p->_clustentries; j++) {
   lut->plut[i + j].paddr = lut->plut[i + j - 1].paddr + p->_objsize;
  }
 }

 if (error)
  netmap_mem_unmap(p, na);



 return error;
}
