
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfxge_softc {int task_reset; int dev; int * enp; } ;
typedef int efx_nic_t ;


 int SFXGE_ADAPTER_LOCK_DESTROY (struct sfxge_softc*) ;
 int efx_nic_destroy (int *) ;
 int efx_nic_reset (int *) ;
 int efx_nic_unprobe (int *) ;
 int efx_nvram_fini (int *) ;
 int efx_vpd_fini (int *) ;
 int pci_disable_busmaster (int ) ;
 int sfxge_bar_fini (struct sfxge_softc*) ;
 int sfxge_dma_fini (struct sfxge_softc*) ;
 int sfxge_ev_fini (struct sfxge_softc*) ;
 int sfxge_intr_fini (struct sfxge_softc*) ;
 int sfxge_mcdi_fini (struct sfxge_softc*) ;
 int sfxge_port_fini (struct sfxge_softc*) ;
 int sfxge_rx_fini (struct sfxge_softc*) ;
 int sfxge_tx_fini (struct sfxge_softc*) ;
 int taskqueue_drain (int ,int *) ;
 int taskqueue_thread ;

__attribute__((used)) static void
sfxge_destroy(struct sfxge_softc *sc)
{
 efx_nic_t *enp;


 sfxge_tx_fini(sc);


 sfxge_rx_fini(sc);


 sfxge_port_fini(sc);


 sfxge_ev_fini(sc);


 sfxge_intr_fini(sc);


 efx_nic_reset(sc->enp);
 efx_vpd_fini(sc->enp);
 efx_nvram_fini(sc->enp);
 efx_nic_unprobe(sc->enp);


 sfxge_mcdi_fini(sc);


 enp = sc->enp;
 sc->enp = ((void*)0);
 efx_nic_destroy(enp);


 sfxge_dma_fini(sc);


 sfxge_bar_fini(sc);

 (void) pci_disable_busmaster(sc->dev);

 taskqueue_drain(taskqueue_thread, &sc->task_reset);


 SFXGE_ADAPTER_LOCK_DESTROY(sc);
}
