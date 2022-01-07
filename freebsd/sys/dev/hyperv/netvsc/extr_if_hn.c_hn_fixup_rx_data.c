
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hn_softc {int hn_caps; int hn_rx_ring_cnt; TYPE_1__* hn_rx_ring; } ;
struct TYPE_2__ {int hn_rx_flags; } ;


 int HN_CAP_UDPHASH ;
 int HN_RX_FLAG_UDP_HASH ;

__attribute__((used)) static void
hn_fixup_rx_data(struct hn_softc *sc)
{

 if (sc->hn_caps & HN_CAP_UDPHASH) {
  int i;

  for (i = 0; i < sc->hn_rx_ring_cnt; ++i)
   sc->hn_rx_ring[i].hn_rx_flags |= HN_RX_FLAG_UDP_HASH;
 }
}
