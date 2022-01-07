
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hn_softc {int hn_rx_filter; } ;


 int NDIS_PACKET_TYPE_NONE ;
 int hn_rndis_set_rxfilter (struct hn_softc*,int ) ;
 int hz ;
 int pause (char*,int) ;

__attribute__((used)) static void
hn_disable_rx(struct hn_softc *sc)
{




 sc->hn_rx_filter = NDIS_PACKET_TYPE_NONE;
 hn_rndis_set_rxfilter(sc, sc->hn_rx_filter);




 pause("waitrx", (200 * hz) / 1000);
}
