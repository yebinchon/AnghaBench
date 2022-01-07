
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vqueue_info {int dummy; } ;
struct pci_vtnet_softc {int rx_mtx; int vsc_be; } ;


 int netbe_rx_enable (int ) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int vq_kick_disable (struct vqueue_info*) ;

__attribute__((used)) static void
pci_vtnet_ping_rxq(void *vsc, struct vqueue_info *vq)
{
 struct pci_vtnet_softc *sc = vsc;




 pthread_mutex_lock(&sc->rx_mtx);
 vq_kick_disable(vq);
 netbe_rx_enable(sc->vsc_be);
 pthread_mutex_unlock(&sc->rx_mtx);
}
