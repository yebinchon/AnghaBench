
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtpci_softc {int vtpci_dev; } ;


 int VIRTIO_CONFIG_STATUS_RESET ;
 int vtpci_set_status (int ,int ) ;

__attribute__((used)) static void
vtpci_reset(struct vtpci_softc *sc)
{





 vtpci_set_status(sc->vtpci_dev, VIRTIO_CONFIG_STATUS_RESET);
}
