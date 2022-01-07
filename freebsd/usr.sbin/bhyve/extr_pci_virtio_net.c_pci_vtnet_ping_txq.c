
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vqueue_info {int dummy; } ;
struct pci_vtnet_softc {scalar_t__ tx_in_progress; int tx_mtx; int tx_cond; } ;


 int pthread_cond_signal (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int vq_has_descs (struct vqueue_info*) ;
 int vq_kick_disable (struct vqueue_info*) ;

__attribute__((used)) static void
pci_vtnet_ping_txq(void *vsc, struct vqueue_info *vq)
{
 struct pci_vtnet_softc *sc = vsc;




 if (!vq_has_descs(vq))
  return;


 pthread_mutex_lock(&sc->tx_mtx);
 vq_kick_disable(vq);
 if (sc->tx_in_progress == 0)
  pthread_cond_signal(&sc->tx_cond);
 pthread_mutex_unlock(&sc->tx_mtx);
}
