
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct hn_softc {int hn_ifp; } ;
typedef int filter ;


 int OID_GEN_CURRENT_PACKET_FILTER ;
 scalar_t__ bootverbose ;
 int hn_rndis_set (struct hn_softc*,int ,int *,int) ;
 int if_printf (int ,char*,int ,...) ;

int
hn_rndis_set_rxfilter(struct hn_softc *sc, uint32_t filter)
{
 int error;

 error = hn_rndis_set(sc, OID_GEN_CURRENT_PACKET_FILTER,
     &filter, sizeof(filter));
 if (error) {
  if_printf(sc->hn_ifp, "set RX filter 0x%08x failed: %d\n",
      filter, error);
 } else {
  if (bootverbose) {
   if_printf(sc->hn_ifp, "set RX filter 0x%08x done\n",
       filter);
  }
 }
 return (error);
}
