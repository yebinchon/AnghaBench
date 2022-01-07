
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct stge_softc {struct ifnet* sc_ifp; } ;
struct ifnet {int if_capenable; } ;


 int AC_TxReset ;
 int CSR_READ_1 (struct stge_softc*,int ) ;
 int CSR_READ_4 (struct stge_softc*,int ) ;
 int CSR_WRITE_1 (struct stge_softc*,int ,int) ;
 int CSR_WRITE_4 (struct stge_softc*,int ,int) ;
 int IFCAP_WOL_MAGIC ;
 int STGE_AsicCtrl ;
 int STGE_LOCK_ASSERT (struct stge_softc*) ;
 int STGE_WakeEvent ;
 int WE_LinkEventEnable ;
 int WE_MagicPktEnable ;
 int WE_WakeOnLanEnable ;
 int WE_WakePktEnable ;

__attribute__((used)) static void
stge_setwol(struct stge_softc *sc)
{
 struct ifnet *ifp;
 uint8_t v;

 STGE_LOCK_ASSERT(sc);

 ifp = sc->sc_ifp;
 v = CSR_READ_1(sc, STGE_WakeEvent);

 v &= ~(WE_WakePktEnable | WE_MagicPktEnable | WE_LinkEventEnable |
     WE_WakeOnLanEnable);
 if ((ifp->if_capenable & IFCAP_WOL_MAGIC) != 0)
  v |= WE_MagicPktEnable | WE_WakeOnLanEnable;
 CSR_WRITE_1(sc, STGE_WakeEvent, v);

 CSR_WRITE_4(sc, STGE_AsicCtrl,
     CSR_READ_4(sc, STGE_AsicCtrl) | AC_TxReset);




}
