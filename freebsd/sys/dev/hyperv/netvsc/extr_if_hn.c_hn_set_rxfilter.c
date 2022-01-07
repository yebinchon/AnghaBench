
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct hn_softc {int hn_rx_filter; } ;


 int HN_LOCK_ASSERT (struct hn_softc*) ;
 int hn_rndis_set_rxfilter (struct hn_softc*,int ) ;

__attribute__((used)) static int
hn_set_rxfilter(struct hn_softc *sc, uint32_t filter)
{
 int error = 0;

 HN_LOCK_ASSERT(sc);

 if (sc->hn_rx_filter != filter) {
  error = hn_rndis_set_rxfilter(sc, filter);
  if (!error)
   sc->hn_rx_filter = filter;
 }
 return (error);
}
