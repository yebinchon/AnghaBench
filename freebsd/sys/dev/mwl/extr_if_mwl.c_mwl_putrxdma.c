
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwl_softc {int sc_nrxfree; int sc_rxfree; } ;
struct mwl_jumbo {int dummy; } ;


 struct mwl_jumbo* MWL_JUMBO_DATA2BUF (void*) ;
 int MWL_RXFREE_LOCK (struct mwl_softc*) ;
 int MWL_RXFREE_UNLOCK (struct mwl_softc*) ;
 int SLIST_INSERT_HEAD (int *,struct mwl_jumbo*,int ) ;
 int next ;

__attribute__((used)) static __inline void
mwl_putrxdma(struct mwl_softc *sc, void *data)
{
 struct mwl_jumbo *buf;


 MWL_RXFREE_LOCK(sc);
 buf = MWL_JUMBO_DATA2BUF(data);
 SLIST_INSERT_HEAD(&sc->sc_rxfree, buf, next);
 sc->sc_nrxfree++;
 MWL_RXFREE_UNLOCK(sc);
}
