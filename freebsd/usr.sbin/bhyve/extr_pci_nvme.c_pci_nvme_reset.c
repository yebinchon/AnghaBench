
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_nvme_softc {int mtx; } ;


 int pci_nvme_reset_locked (struct pci_nvme_softc*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static void
pci_nvme_reset(struct pci_nvme_softc *sc)
{
 pthread_mutex_lock(&sc->mtx);
 pci_nvme_reset_locked(sc);
 pthread_mutex_unlock(&sc->mtx);
}
