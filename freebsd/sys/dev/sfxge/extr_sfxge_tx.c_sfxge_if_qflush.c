
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfxge_softc {unsigned int txq_count; int * txq; } ;
struct ifnet {struct sfxge_softc* if_softc; } ;


 int sfxge_tx_qdpl_flush (int ) ;

void
sfxge_if_qflush(struct ifnet *ifp)
{
 struct sfxge_softc *sc;
 unsigned int i;

 sc = ifp->if_softc;

 for (i = 0; i < sc->txq_count; i++)
  sfxge_tx_qdpl_flush(sc->txq[i]);
}
