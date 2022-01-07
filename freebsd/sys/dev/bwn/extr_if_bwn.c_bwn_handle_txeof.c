
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwn_txstatus {int rtscnt; scalar_t__ ampdu; scalar_t__ im; } ;
struct bwn_stats {int rts; int rtsfail; } ;
struct bwn_softc {int sc_dev; } ;
struct bwn_mac {int mac_flags; struct bwn_softc* mac_sc; struct bwn_stats mac_stats; } ;


 int BWN_ASSERT_LOCKED (struct bwn_softc*) ;
 int BWN_MAC_FLAG_DMA ;
 int bwn_dma_handle_txeof (struct bwn_mac*,struct bwn_txstatus const*) ;
 int bwn_phy_txpower_check (struct bwn_mac*,int ) ;
 int bwn_pio_handle_txeof (struct bwn_mac*,struct bwn_txstatus const*) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static void
bwn_handle_txeof(struct bwn_mac *mac, const struct bwn_txstatus *status)
{
 struct bwn_softc *sc = mac->mac_sc;
 struct bwn_stats *stats = &mac->mac_stats;

 BWN_ASSERT_LOCKED(mac->mac_sc);

 if (status->im)
  device_printf(sc->sc_dev, "TODO: STATUS IM\n");
 if (status->ampdu)
  device_printf(sc->sc_dev, "TODO: STATUS AMPDU\n");
 if (status->rtscnt) {
  if (status->rtscnt == 0xf)
   stats->rtsfail++;
  else
   stats->rts++;
 }

 if (mac->mac_flags & BWN_MAC_FLAG_DMA) {
  bwn_dma_handle_txeof(mac, status);
 } else {
  bwn_pio_handle_txeof(mac, status);
 }

 bwn_phy_txpower_check(mac, 0);
}
