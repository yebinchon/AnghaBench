
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gem_softc {scalar_t__ sc_rxptr; int sc_dev; struct gem_rxsoft* sc_rxsoft; scalar_t__ sc_txwin; scalar_t__ sc_txnext; int sc_txfree; TYPE_1__* sc_txdescs; } ;
struct gem_rxsoft {int * rxs_mbuf; } ;
struct TYPE_2__ {scalar_t__ gd_addr; scalar_t__ gd_flags; } ;


 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int GEM_CDSYNC (struct gem_softc*,int) ;
 int GEM_INIT_RXDESC (struct gem_softc*,int) ;
 int GEM_LOCK_ASSERT (struct gem_softc*,int ) ;
 int GEM_MAXTXFREE ;
 int GEM_NRXDESC ;
 int GEM_NTXDESC ;
 int MA_OWNED ;
 int device_printf (int ,char*,int,int) ;
 int gem_add_rxbuf (struct gem_softc*,int) ;
 int gem_rxdrain (struct gem_softc*) ;

__attribute__((used)) static int
gem_meminit(struct gem_softc *sc)
{
 struct gem_rxsoft *rxs;
 int error, i;

 GEM_LOCK_ASSERT(sc, MA_OWNED);




 for (i = 0; i < GEM_NTXDESC; i++) {
  sc->sc_txdescs[i].gd_flags = 0;
  sc->sc_txdescs[i].gd_addr = 0;
 }
 sc->sc_txfree = GEM_MAXTXFREE;
 sc->sc_txnext = 0;
 sc->sc_txwin = 0;





 for (i = 0; i < GEM_NRXDESC; i++) {
  rxs = &sc->sc_rxsoft[i];
  if (rxs->rxs_mbuf == ((void*)0)) {
   if ((error = gem_add_rxbuf(sc, i)) != 0) {
    device_printf(sc->sc_dev,
        "unable to allocate or map RX buffer %d, "
        "error = %d\n", i, error);




    gem_rxdrain(sc);
    return (1);
   }
  } else
   GEM_INIT_RXDESC(sc, i);
 }
 sc->sc_rxptr = 0;

 GEM_CDSYNC(sc, BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);

 return (0);
}
