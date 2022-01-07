
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct malo_softc {int dummy; } ;
struct malo_rxdesc {int rxcontrol; int physbuffdata; scalar_t__ nf; int pktlen; scalar_t__ channel; int status; scalar_t__ snr; scalar_t__ qosctrl; } ;
struct malo_rxbuf {int bf_data; int * bf_m; struct malo_rxdesc* bf_desc; } ;


 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int ENOMEM ;
 int MALO_RXDESC_SYNC (struct malo_softc*,struct malo_rxdesc*,int) ;
 int MALO_RXD_CTRL_DRIVER_OWN ;
 int MALO_RXD_CTRL_OS_OWN ;
 int MALO_RXD_STATUS_IDLE ;
 int MALO_RXSIZE ;
 int htole16 (int ) ;
 int htole32 (int ) ;
 int * malo_getrxmbuf (struct malo_softc*,struct malo_rxbuf*) ;

__attribute__((used)) static int
malo_rxbuf_init(struct malo_softc *sc, struct malo_rxbuf *bf)
{
 struct malo_rxdesc *ds;

 ds = bf->bf_desc;
 if (bf->bf_m == ((void*)0)) {
  bf->bf_m = malo_getrxmbuf(sc, bf);
  if (bf->bf_m == ((void*)0)) {

   ds->rxcontrol = MALO_RXD_CTRL_OS_OWN;

   MALO_RXDESC_SYNC(sc, ds, BUS_DMASYNC_PREWRITE);
   return ENOMEM;
  }
 }




 ds->qosctrl = 0;
 ds->snr = 0;
 ds->status = MALO_RXD_STATUS_IDLE;
 ds->channel = 0;
 ds->pktlen = htole16(MALO_RXSIZE);
 ds->nf = 0;
 ds->physbuffdata = htole32(bf->bf_data);

 ds->rxcontrol = MALO_RXD_CTRL_DRIVER_OWN;
 MALO_RXDESC_SYNC(sc, ds, BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);

 return 0;
}
