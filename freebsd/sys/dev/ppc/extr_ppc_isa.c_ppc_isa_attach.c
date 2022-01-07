
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppc_data {int ppc_avm; scalar_t__ ppc_dmachan; int ppc_dmadone; } ;
typedef int device_t ;


 int PPB_ECP ;
 struct ppc_data* device_get_softc (int ) ;
 int isa_dma_acquire (scalar_t__) ;
 int isa_dmainit (scalar_t__,int) ;
 int ppc_attach (int ) ;
 int ppc_isa_dmadone ;

int
ppc_isa_attach(device_t dev)
{
 struct ppc_data *ppc = device_get_softc(dev);

 if ((ppc->ppc_avm & PPB_ECP) && (ppc->ppc_dmachan > 0)) {

  isa_dma_acquire(ppc->ppc_dmachan);
  isa_dmainit(ppc->ppc_dmachan, 1024);
  ppc->ppc_dmadone = ppc_isa_dmadone;
 }

 return (ppc_attach(dev));
}
