
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmxnet3_softc {int * vmx_mcast; int vmx_mcast_dma; } ;


 int iflib_dma_free (int *) ;

__attribute__((used)) static void
vmxnet3_free_mcast_table(struct vmxnet3_softc *sc)
{


 if (sc->vmx_mcast != ((void*)0)) {
  iflib_dma_free(&sc->vmx_mcast_dma);
  sc->vmx_mcast = ((void*)0);
 }
}
