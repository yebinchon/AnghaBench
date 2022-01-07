
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_vtnet_softc {int rx_mtx; } ;
typedef enum ev_type { ____Placeholder_ev_type } ev_type ;


 int pci_vtnet_rx (struct pci_vtnet_softc*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static void
pci_vtnet_rx_callback(int fd, enum ev_type type, void *param)
{
 struct pci_vtnet_softc *sc = param;

 pthread_mutex_lock(&sc->rx_mtx);
 pci_vtnet_rx(sc);
 pthread_mutex_unlock(&sc->rx_mtx);

}
