
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct cgem_softc {int net_ctl_shadow; int rxnobufs; int rxoverruns; int dev; int ifp; } ;
typedef int if_t ;


 int CGEM_INTR_HRESP_NOT_OK ;
 int CGEM_INTR_RX_COMPLETE ;
 int CGEM_INTR_RX_OVERRUN ;
 int CGEM_INTR_RX_USED_READ ;
 int CGEM_INTR_STAT ;
 int CGEM_LOCK (struct cgem_softc*) ;
 int CGEM_NET_CTRL ;
 int CGEM_NET_CTRL_FLUSH_DPRAM_PKT ;
 int CGEM_RX_STAT ;
 int CGEM_RX_STAT_HRESP_NOT_OK ;
 int CGEM_RX_STAT_OVERRUN ;
 int CGEM_UNLOCK (struct cgem_softc*) ;
 int IFF_DRV_RUNNING ;
 int RD4 (struct cgem_softc*,int ) ;
 int WR4 (struct cgem_softc*,int ,int) ;
 int cgem_clean_tx (struct cgem_softc*) ;
 int cgem_fill_rqueue (struct cgem_softc*) ;
 int cgem_recv (struct cgem_softc*) ;
 int cgem_start_locked (int ) ;
 int device_printf (int ,char*,int) ;
 int if_getdrvflags (int ) ;
 int if_sendq_empty (int ) ;

__attribute__((used)) static void
cgem_intr(void *arg)
{
 struct cgem_softc *sc = (struct cgem_softc *)arg;
 if_t ifp = sc->ifp;
 uint32_t istatus;

 CGEM_LOCK(sc);

 if ((if_getdrvflags(ifp) & IFF_DRV_RUNNING) == 0) {
  CGEM_UNLOCK(sc);
  return;
 }


 istatus = RD4(sc, CGEM_INTR_STAT);
 WR4(sc, CGEM_INTR_STAT, istatus);


 if ((istatus & CGEM_INTR_RX_COMPLETE) != 0)
  cgem_recv(sc);


 cgem_clean_tx(sc);


 if ((istatus & CGEM_INTR_HRESP_NOT_OK) != 0) {
  device_printf(sc->dev, "cgem_intr: hresp not okay! "
         "rx_status=0x%x\n", RD4(sc, CGEM_RX_STAT));
  WR4(sc, CGEM_RX_STAT, CGEM_RX_STAT_HRESP_NOT_OK);
 }


 if ((istatus & CGEM_INTR_RX_OVERRUN) != 0) {

  WR4(sc, CGEM_RX_STAT, CGEM_RX_STAT_OVERRUN);
  sc->rxoverruns++;
 }


 if ((istatus & CGEM_INTR_RX_USED_READ) != 0) {
  WR4(sc, CGEM_NET_CTRL, sc->net_ctl_shadow |
      CGEM_NET_CTRL_FLUSH_DPRAM_PKT);
  cgem_fill_rqueue(sc);
  sc->rxnobufs++;
 }


 if (!if_sendq_empty(ifp))
  cgem_start_locked(ifp);

 CGEM_UNLOCK(sc);
}
