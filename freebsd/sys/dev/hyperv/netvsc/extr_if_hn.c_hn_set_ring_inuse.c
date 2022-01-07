
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hn_softc {int hn_rx_ring_cnt; int hn_tx_ring_cnt; int hn_tx_ring_inuse; int hn_rx_ring_inuse; int hn_ifp; } ;


 int KASSERT (int,char*) ;
 scalar_t__ bootverbose ;
 int if_printf (int ,char*,int,int) ;
 int rss_getnumbuckets () ;

__attribute__((used)) static void
hn_set_ring_inuse(struct hn_softc *sc, int ring_cnt)
{
 KASSERT(ring_cnt > 0 && ring_cnt <= sc->hn_rx_ring_cnt,
     ("invalid ring count %d", ring_cnt));

 if (sc->hn_tx_ring_cnt > ring_cnt)
  sc->hn_tx_ring_inuse = ring_cnt;
 else
  sc->hn_tx_ring_inuse = sc->hn_tx_ring_cnt;
 sc->hn_rx_ring_inuse = ring_cnt;
 if (bootverbose) {
  if_printf(sc->hn_ifp, "%d TX ring, %d RX ring\n",
      sc->hn_tx_ring_inuse, sc->hn_rx_ring_inuse);
 }
}
