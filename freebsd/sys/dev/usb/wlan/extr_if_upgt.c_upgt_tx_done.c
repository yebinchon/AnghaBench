
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct upgt_softc {scalar_t__ sc_tx_timer; struct upgt_data* sc_tx_data; } ;
struct TYPE_2__ {int reqid; } ;
struct upgt_lmac_tx_done_desc {int seq; int rssi; int status; TYPE_1__ header2; } ;
struct upgt_data {scalar_t__ addr; int * m; int * ni; } ;


 int DPRINTF (struct upgt_softc*,int ,char*,scalar_t__,...) ;
 int UPGT_ASSERT_LOCKED (struct upgt_softc*) ;
 int UPGT_DEBUG_TX_PROC ;
 int UPGT_LOCK (struct upgt_softc*) ;
 int UPGT_TX_MAXCOUNT ;
 int UPGT_UNLOCK (struct upgt_softc*) ;
 int le16toh (int ) ;
 scalar_t__ le32toh (int ) ;
 int upgt_mem_free (struct upgt_softc*,scalar_t__) ;
 int upgt_start (struct upgt_softc*) ;

__attribute__((used)) static void
upgt_tx_done(struct upgt_softc *sc, uint8_t *data)
{
 struct upgt_lmac_tx_done_desc *desc;
 int i, freed = 0;

 UPGT_ASSERT_LOCKED(sc);

 desc = (struct upgt_lmac_tx_done_desc *)data;

 for (i = 0; i < UPGT_TX_MAXCOUNT; i++) {
  struct upgt_data *data_tx = &sc->sc_tx_data[i];

  if (data_tx->addr == le32toh(desc->header2.reqid)) {
   upgt_mem_free(sc, data_tx->addr);
   data_tx->ni = ((void*)0);
   data_tx->addr = 0;
   data_tx->m = ((void*)0);

   DPRINTF(sc, UPGT_DEBUG_TX_PROC,
       "TX done: memaddr=0x%08x, status=0x%04x, rssi=%d, ",
       le32toh(desc->header2.reqid),
       le16toh(desc->status), le16toh(desc->rssi));
   DPRINTF(sc, UPGT_DEBUG_TX_PROC, "seq=%d\n",
       le16toh(desc->seq));

   freed++;
  }
 }

 if (freed != 0) {
  UPGT_UNLOCK(sc);
  sc->sc_tx_timer = 0;
  upgt_start(sc);
  UPGT_LOCK(sc);
 }
}
