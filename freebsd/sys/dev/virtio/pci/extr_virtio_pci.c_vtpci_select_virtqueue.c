
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtpci_softc {int dummy; } ;


 int VIRTIO_PCI_QUEUE_SEL ;
 int vtpci_write_config_2 (struct vtpci_softc*,int ,int) ;

__attribute__((used)) static void
vtpci_select_virtqueue(struct vtpci_softc *sc, int idx)
{

 vtpci_write_config_2(sc, VIRTIO_PCI_QUEUE_SEL, idx);
}
