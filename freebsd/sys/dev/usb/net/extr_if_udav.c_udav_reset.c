
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udav_softc {int sc_flags; int sc_ue; } ;


 int UDAV_CLRBIT (struct udav_softc*,int ,int) ;
 int UDAV_EXT_PHY ;
 int UDAV_NCR ;
 int UDAV_NCR_EXT_PHY ;
 int UDAV_NCR_RST ;
 int UDAV_SETBIT (struct udav_softc*,int ,int) ;
 int UDAV_TX_TIMEOUT ;
 int hz ;
 int udav_csr_read1 (struct udav_softc*,int ) ;
 scalar_t__ uether_pause (int *,int) ;

__attribute__((used)) static void
udav_reset(struct udav_softc *sc)
{
 int i;







 UDAV_CLRBIT(sc, UDAV_NCR, UDAV_NCR_EXT_PHY);







 UDAV_SETBIT(sc, UDAV_NCR, UDAV_NCR_RST);

 for (i = 0; i < UDAV_TX_TIMEOUT; i++) {
  if (!(udav_csr_read1(sc, UDAV_NCR) & UDAV_NCR_RST))
   break;
  if (uether_pause(&sc->sc_ue, hz / 100))
   break;
 }

 uether_pause(&sc->sc_ue, hz / 100);
}
