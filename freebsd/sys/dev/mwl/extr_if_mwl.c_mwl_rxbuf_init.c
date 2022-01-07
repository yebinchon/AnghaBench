
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mst_rxbuf_failed; } ;
struct mwl_softc {TYPE_1__ sc_stats; } ;
struct mwl_rxdesc {int RxControl; int pPhysBuffData; scalar_t__ SQ2; int PktLen; scalar_t__ Channel; int Status; scalar_t__ RSSI; scalar_t__ QosCtrl; } ;
struct mwl_rxbuf {int * bf_data; struct mwl_rxdesc* bf_desc; } ;


 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int EAGLE_RXD_CTRL_DRIVER_OWN ;
 int EAGLE_RXD_CTRL_OS_OWN ;
 int EAGLE_RXD_STATUS_IDLE ;
 int ENOMEM ;
 int MWL_AGGR_SIZE ;
 int MWL_JUMBO_DMA_ADDR (struct mwl_softc*,int *) ;
 int MWL_RXDESC_SYNC (struct mwl_softc*,struct mwl_rxdesc*,int) ;
 int htole16 (int ) ;
 int htole32 (int ) ;
 int * mwl_getrxdma (struct mwl_softc*) ;

__attribute__((used)) static int
mwl_rxbuf_init(struct mwl_softc *sc, struct mwl_rxbuf *bf)
{
 struct mwl_rxdesc *ds;

 ds = bf->bf_desc;
 if (bf->bf_data == ((void*)0)) {
  bf->bf_data = mwl_getrxdma(sc);
  if (bf->bf_data == ((void*)0)) {

   ds->RxControl = EAGLE_RXD_CTRL_OS_OWN;

   MWL_RXDESC_SYNC(sc, ds, BUS_DMASYNC_PREWRITE);
   sc->sc_stats.mst_rxbuf_failed++;
   return ENOMEM;
  }
 }
 ds->QosCtrl = 0;
 ds->RSSI = 0;
 ds->Status = EAGLE_RXD_STATUS_IDLE;
 ds->Channel = 0;
 ds->PktLen = htole16(MWL_AGGR_SIZE);
 ds->SQ2 = 0;
 ds->pPhysBuffData = htole32(MWL_JUMBO_DMA_ADDR(sc, bf->bf_data));

 ds->RxControl = EAGLE_RXD_CTRL_DRIVER_OWN;
 MWL_RXDESC_SYNC(sc, ds, BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);

 return 0;
}
