
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmxnet3_softc {int * vmx_ds; int vmx_ds_dma; int * vmx_rss; int vmx_rss_dma; } ;


 int iflib_dma_free (int *) ;

__attribute__((used)) static void
vmxnet3_free_shared_data(struct vmxnet3_softc *sc)
{


 if (sc->vmx_rss != ((void*)0)) {
  iflib_dma_free(&sc->vmx_rss_dma);
  sc->vmx_rss = ((void*)0);
 }


 if (sc->vmx_ds != ((void*)0)) {
  iflib_dma_free(&sc->vmx_ds_dma);
  sc->vmx_ds = ((void*)0);
 }
}
