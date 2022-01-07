
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct cas_softc {int sc_rxdptr; TYPE_1__* sc_rxdsoft; int sc_rdmatag; } ;
struct TYPE_2__ {int rxds_dmamap; } ;


 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int CAS_CDSYNC (struct cas_softc*,int) ;
 int CAS_LOCK_ASSERT (struct cas_softc*,int ) ;
 int CAS_NEXTRXDESC (int) ;
 int CAS_NRXDESC ;
 int CAS_NRXDESC_MASK ;
 int CAS_RX_KICK ;
 int CAS_UPDATE_RXDESC (struct cas_softc*,int,size_t) ;
 int CAS_WRITE_4 (struct cas_softc*,int ,int) ;
 int MA_OWNED ;
 int bus_dmamap_sync (int ,int ,int) ;

__attribute__((used)) static inline void
cas_add_rxdesc(struct cas_softc *sc, u_int idx)
{

 CAS_LOCK_ASSERT(sc, MA_OWNED);

 bus_dmamap_sync(sc->sc_rdmatag, sc->sc_rxdsoft[idx].rxds_dmamap,
     BUS_DMASYNC_PREREAD);
 CAS_UPDATE_RXDESC(sc, sc->sc_rxdptr, idx);
 sc->sc_rxdptr = CAS_NEXTRXDESC(sc->sc_rxdptr);







 if ((sc->sc_rxdptr % 4) == 0) {
  CAS_CDSYNC(sc, BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
  CAS_WRITE_4(sc, CAS_RX_KICK,
      (sc->sc_rxdptr + CAS_NRXDESC - 4) & CAS_NRXDESC_MASK);
 }
}
