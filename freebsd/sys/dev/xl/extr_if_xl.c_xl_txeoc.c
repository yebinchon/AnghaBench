
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int8_t ;
struct TYPE_4__ {int xl_tx_cons; TYPE_1__* xl_tx_head; struct xl_chain* xl_tx_chain; scalar_t__ xl_tx_cnt; } ;
struct xl_softc {scalar_t__ xl_type; int xl_wdog_timer; int xl_tx_thresh; int xl_dev; TYPE_2__ xl_cdata; } ;
struct xl_chain {int xl_phys; } ;
struct TYPE_3__ {int xl_phys; } ;


 int CSR_READ_1 (struct xl_softc*,int ) ;
 int CSR_WRITE_1 (struct xl_softc*,int ,int) ;
 int CSR_WRITE_2 (struct xl_softc*,int ,int) ;
 int CSR_WRITE_4 (struct xl_softc*,int ,int ) ;
 int XL_CMD_DOWN_UNSTALL ;
 int XL_CMD_SET_TX_RECLAIM ;
 int XL_CMD_TX_ENABLE ;
 int XL_CMD_TX_RESET ;
 int XL_CMD_TX_SET_START ;
 int XL_COMMAND ;
 int XL_DOWNLIST_PTR ;
 int XL_DOWN_POLL ;
 int XL_LOCK_ASSERT (struct xl_softc*) ;
 scalar_t__ XL_MIN_FRAMELEN ;
 int XL_PACKET_SIZE ;
 int XL_TXSTATUS_JABBER ;
 int XL_TXSTATUS_RECLAIM ;
 int XL_TXSTATUS_UNDERRUN ;
 int XL_TX_FREETHRESH ;
 int XL_TX_STATUS ;
 scalar_t__ XL_TYPE_905B ;
 int device_printf (int ,char*,int) ;
 int xl_wait (struct xl_softc*) ;

__attribute__((used)) static void
xl_txeoc(struct xl_softc *sc)
{
 u_int8_t txstat;

 XL_LOCK_ASSERT(sc);

 while ((txstat = CSR_READ_1(sc, XL_TX_STATUS))) {
  if (txstat & XL_TXSTATUS_UNDERRUN ||
   txstat & XL_TXSTATUS_JABBER ||
   txstat & XL_TXSTATUS_RECLAIM) {
   device_printf(sc->xl_dev,
       "transmission error: 0x%02x\n", txstat);
   CSR_WRITE_2(sc, XL_COMMAND, XL_CMD_TX_RESET);
   xl_wait(sc);
   if (sc->xl_type == XL_TYPE_905B) {
    if (sc->xl_cdata.xl_tx_cnt) {
     int i;
     struct xl_chain *c;

     i = sc->xl_cdata.xl_tx_cons;
     c = &sc->xl_cdata.xl_tx_chain[i];
     CSR_WRITE_4(sc, XL_DOWNLIST_PTR,
         c->xl_phys);
     CSR_WRITE_1(sc, XL_DOWN_POLL, 64);
     sc->xl_wdog_timer = 5;
    }
   } else {
    if (sc->xl_cdata.xl_tx_head != ((void*)0)) {
     CSR_WRITE_4(sc, XL_DOWNLIST_PTR,
         sc->xl_cdata.xl_tx_head->xl_phys);
     sc->xl_wdog_timer = 5;
    }
   }




   CSR_WRITE_1(sc, XL_TX_FREETHRESH, XL_PACKET_SIZE >> 8);
   if (txstat & XL_TXSTATUS_UNDERRUN &&
       sc->xl_tx_thresh < XL_PACKET_SIZE) {
    sc->xl_tx_thresh += XL_MIN_FRAMELEN;
    device_printf(sc->xl_dev,
"tx underrun, increasing tx start threshold to %d bytes\n", sc->xl_tx_thresh);
   }
   CSR_WRITE_2(sc, XL_COMMAND,
       XL_CMD_TX_SET_START|sc->xl_tx_thresh);
   if (sc->xl_type == XL_TYPE_905B) {
    CSR_WRITE_2(sc, XL_COMMAND,
    XL_CMD_SET_TX_RECLAIM|(XL_PACKET_SIZE >> 4));
   }
   CSR_WRITE_2(sc, XL_COMMAND, XL_CMD_TX_ENABLE);
   CSR_WRITE_2(sc, XL_COMMAND, XL_CMD_DOWN_UNSTALL);
  } else {
   CSR_WRITE_2(sc, XL_COMMAND, XL_CMD_TX_ENABLE);
   CSR_WRITE_2(sc, XL_COMMAND, XL_CMD_DOWN_UNSTALL);
  }




  CSR_WRITE_1(sc, XL_TX_STATUS, 0x01);
 }
}
