
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct vtpci_softc {int vtpci_dev; } ;
struct vtpci_interrupt {scalar_t__ vti_rid; } ;
typedef int device_t ;


 int ENODEV ;
 scalar_t__ VIRTIO_MSI_NO_VECTOR ;
 int device_printf (int ,char*) ;
 scalar_t__ vtpci_read_config_2 (struct vtpci_softc*,int) ;
 int vtpci_write_config_2 (struct vtpci_softc*,int,scalar_t__) ;

__attribute__((used)) static int
vtpci_register_msix_vector(struct vtpci_softc *sc, int offset,
    struct vtpci_interrupt *intr)
{
 device_t dev;
 uint16_t vector;

 dev = sc->vtpci_dev;

 if (intr != ((void*)0)) {

  vector = intr->vti_rid - 1;
 } else
  vector = VIRTIO_MSI_NO_VECTOR;

 vtpci_write_config_2(sc, offset, vector);


 if (vtpci_read_config_2(sc, offset) != vector) {
  device_printf(dev,
      "insufficient host resources for MSIX interrupts\n");
  return (ENODEV);
 }

 return (0);
}
