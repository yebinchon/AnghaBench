
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_net_rxhdr {int dummy; } ;
struct pci_vtnet_softc {int resetting; int rx_merge; int rx_vhdrlen; int rx_mtx; int tx_mtx; int vsc_vs; scalar_t__ tx_in_progress; } ;


 int DPRINTF (char*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int usleep (int) ;
 int vi_reset_dev (int *) ;

__attribute__((used)) static void
pci_vtnet_reset(void *vsc)
{
 struct pci_vtnet_softc *sc = vsc;

 DPRINTF(("vtnet: device reset requested !\n"));


 pthread_mutex_lock(&sc->rx_mtx);


 pthread_mutex_lock(&sc->tx_mtx);
 sc->resetting = 1;
 while (sc->tx_in_progress) {
  pthread_mutex_unlock(&sc->tx_mtx);
  usleep(10000);
  pthread_mutex_lock(&sc->tx_mtx);
 }

 sc->rx_merge = 1;
 sc->rx_vhdrlen = sizeof(struct virtio_net_rxhdr);






 vi_reset_dev(&sc->vsc_vs);

 sc->resetting = 0;
 pthread_mutex_unlock(&sc->tx_mtx);
 pthread_mutex_unlock(&sc->rx_mtx);
}
