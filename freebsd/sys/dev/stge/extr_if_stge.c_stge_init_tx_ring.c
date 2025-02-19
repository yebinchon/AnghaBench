
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct stge_txdesc {int dummy; } ;
struct TYPE_3__ {int stge_tx_ring_map; int stge_tx_ring_tag; int stge_txfreeq; struct stge_txdesc* stge_txdesc; scalar_t__ stge_tx_cnt; scalar_t__ stge_tx_cons; scalar_t__ stge_tx_prod; int stge_txbusyq; } ;
struct stge_ring_data {TYPE_2__* stge_tx_ring; } ;
struct stge_softc {TYPE_1__ sc_cdata; struct stge_ring_data sc_rdata; } ;
typedef int bus_addr_t ;
struct TYPE_4__ {void* tfd_control; void* tfd_next; } ;


 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int STAILQ_INIT (int *) ;
 int STAILQ_INSERT_TAIL (int *,struct stge_txdesc*,int ) ;
 int STGE_TX_RING_ADDR (struct stge_softc*,int) ;
 int STGE_TX_RING_CNT ;
 int STGE_TX_RING_SZ ;
 int TFD_TFDDone ;
 int bus_dmamap_sync (int ,int ,int) ;
 int bzero (TYPE_2__*,int ) ;
 void* htole64 (int ) ;
 int tx_q ;

__attribute__((used)) static void
stge_init_tx_ring(struct stge_softc *sc)
{
 struct stge_ring_data *rd;
 struct stge_txdesc *txd;
 bus_addr_t addr;
 int i;

 STAILQ_INIT(&sc->sc_cdata.stge_txfreeq);
 STAILQ_INIT(&sc->sc_cdata.stge_txbusyq);

 sc->sc_cdata.stge_tx_prod = 0;
 sc->sc_cdata.stge_tx_cons = 0;
 sc->sc_cdata.stge_tx_cnt = 0;

 rd = &sc->sc_rdata;
 bzero(rd->stge_tx_ring, STGE_TX_RING_SZ);
 for (i = 0; i < STGE_TX_RING_CNT; i++) {
  if (i == (STGE_TX_RING_CNT - 1))
   addr = STGE_TX_RING_ADDR(sc, 0);
  else
   addr = STGE_TX_RING_ADDR(sc, i + 1);
  rd->stge_tx_ring[i].tfd_next = htole64(addr);
  rd->stge_tx_ring[i].tfd_control = htole64(TFD_TFDDone);
  txd = &sc->sc_cdata.stge_txdesc[i];
  STAILQ_INSERT_TAIL(&sc->sc_cdata.stge_txfreeq, txd, tx_q);
 }

 bus_dmamap_sync(sc->sc_cdata.stge_tx_ring_tag,
     sc->sc_cdata.stge_tx_ring_map,
     BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);

}
