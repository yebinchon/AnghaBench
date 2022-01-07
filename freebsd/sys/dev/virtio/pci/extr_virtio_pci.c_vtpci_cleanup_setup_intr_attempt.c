
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtpci_softc {int vtpci_flags; int vtpci_nvqs; } ;


 int VIRTIO_MSI_CONFIG_VECTOR ;
 int VIRTIO_MSI_NO_VECTOR ;
 int VIRTIO_MSI_QUEUE_VECTOR ;
 int VTPCI_FLAG_MSIX ;
 int vtpci_free_interrupts (struct vtpci_softc*) ;
 int vtpci_select_virtqueue (struct vtpci_softc*,int) ;
 int vtpci_write_config_2 (struct vtpci_softc*,int ,int ) ;

__attribute__((used)) static void
vtpci_cleanup_setup_intr_attempt(struct vtpci_softc *sc)
{
 int idx;

 if (sc->vtpci_flags & VTPCI_FLAG_MSIX) {
  vtpci_write_config_2(sc, VIRTIO_MSI_CONFIG_VECTOR,
      VIRTIO_MSI_NO_VECTOR);

  for (idx = 0; idx < sc->vtpci_nvqs; idx++) {
   vtpci_select_virtqueue(sc, idx);
   vtpci_write_config_2(sc, VIRTIO_MSI_QUEUE_VECTOR,
       VIRTIO_MSI_NO_VECTOR);
  }
 }

 vtpci_free_interrupts(sc);
}
