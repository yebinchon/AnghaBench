
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtpci_softc {int * vtpci_child_dev; } ;
typedef int * device_t ;


 int VIRTIO_CONFIG_CHANGE (int *) ;

__attribute__((used)) static void
vtpci_config_intr(void *xsc)
{
 struct vtpci_softc *sc;
 device_t child;

 sc = xsc;
 child = sc->vtpci_child_dev;

 if (child != ((void*)0))
  VIRTIO_CONFIG_CHANGE(child);
}
