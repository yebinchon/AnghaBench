
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int bsmbx; int dev_lock; int bmbx_lock; } ;
typedef TYPE_1__* POCE_SOFTC ;


 int LOCK_DESTROY (int *) ;
 int oce_delete_nw_interface (TYPE_1__*) ;
 int oce_dma_free (TYPE_1__*,int *) ;
 int oce_free_lro (TYPE_1__*) ;
 int oce_fw_clean (TYPE_1__*) ;
 int oce_hw_intr_disable (TYPE_1__*) ;
 int oce_hw_pci_free (TYPE_1__*) ;
 int oce_intr_free (TYPE_1__*) ;
 int oce_queue_release_all (TYPE_1__*) ;
 int oce_stats_free (TYPE_1__*) ;

void
oce_hw_shutdown(POCE_SOFTC sc)
{

 oce_stats_free(sc);

 oce_hw_intr_disable(sc);





 oce_queue_release_all(sc);

 oce_delete_nw_interface(sc);

 oce_fw_clean(sc);

 oce_intr_free(sc);

 oce_hw_pci_free(sc);

 LOCK_DESTROY(&sc->bmbx_lock);
 LOCK_DESTROY(&sc->dev_lock);

 oce_dma_free(sc, &sc->bsmbx);
}
