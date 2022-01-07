
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {int alc_tx_prod; int alc_tx_ring_map; int alc_tx_ring_tag; } ;
struct alc_softc {int alc_flags; int alc_watchdog_timer; TYPE_1__ alc_cdata; } ;


 int ALC_FLAG_AR816X_FAMILY ;
 int ALC_MBOX_TD_PRI0_PROD_IDX ;
 int ALC_MBOX_TD_PROD_IDX ;
 int ALC_TX_TIMEOUT ;
 int BUS_DMASYNC_PREWRITE ;
 int CSR_WRITE_2 (struct alc_softc*,int ,int ) ;
 int CSR_WRITE_4 (struct alc_softc*,int ,int) ;
 int MBOX_TD_PROD_LO_IDX_MASK ;
 int MBOX_TD_PROD_LO_IDX_SHIFT ;
 int bus_dmamap_sync (int ,int ,int ) ;

__attribute__((used)) static void
alc_start_tx(struct alc_softc *sc)
{


 bus_dmamap_sync(sc->alc_cdata.alc_tx_ring_tag,
     sc->alc_cdata.alc_tx_ring_map, BUS_DMASYNC_PREWRITE);

 if ((sc->alc_flags & ALC_FLAG_AR816X_FAMILY) != 0)
  CSR_WRITE_2(sc, ALC_MBOX_TD_PRI0_PROD_IDX,
      (uint16_t)sc->alc_cdata.alc_tx_prod);
 else
  CSR_WRITE_4(sc, ALC_MBOX_TD_PROD_IDX,
      (sc->alc_cdata.alc_tx_prod <<
      MBOX_TD_PROD_LO_IDX_SHIFT) &
      MBOX_TD_PROD_LO_IDX_MASK);

 sc->alc_watchdog_timer = ALC_TX_TIMEOUT;
}
