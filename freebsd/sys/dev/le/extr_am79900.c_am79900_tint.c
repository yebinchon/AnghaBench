
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int tmd ;
struct letmd {int tmd2; int tmd0; int tmd1; } ;
struct lance_softc {int sc_first_td; scalar_t__ sc_no_td; int sc_flags; int sc_ntbuf; int sc_wdog_timer; int (* sc_nocarrier ) (struct lance_softc*) ;int (* sc_copyfromdesc ) (struct lance_softc*,struct letmd*,int ,int) ;struct ifnet* sc_ifp; } ;
struct ifnet {int if_drv_flags; } ;


 int IFCOUNTER_COLLISIONS ;
 int IFCOUNTER_OERRORS ;
 int IFCOUNTER_OPACKETS ;
 int IFF_DRV_OACTIVE ;
 int LE_CARRIER ;
 int LE_DEBUG ;
 int LE_LE32TOH (int ) ;
 int LE_T1_ERR ;
 int LE_T1_MORE ;
 int LE_T1_ONE ;
 int LE_T1_OWN ;
 int LE_T2_BUFF ;
 int LE_T2_LCAR ;
 int LE_T2_LCOL ;
 int LE_T2_RTRY ;
 int LE_T2_UFLO ;
 int LE_TMDADDR (struct lance_softc*,int) ;
 int LINK_STATE_DOWN ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int if_link_state_change (struct ifnet*,int ) ;
 int if_printf (struct ifnet*,char*,...) ;
 int lance_init_locked (struct lance_softc*) ;
 int stub1 (struct lance_softc*,struct letmd*,int ,int) ;
 int stub2 (struct lance_softc*) ;

__attribute__((used)) static inline void
am79900_tint(struct lance_softc *sc)
{
 struct ifnet *ifp = sc->sc_ifp;
 struct letmd tmd;
 uint32_t tmd1, tmd2;
 int bix;

 bix = sc->sc_first_td;

 for (;;) {
  if (sc->sc_no_td <= 0)
   break;

  (*sc->sc_copyfromdesc)(sc, &tmd, LE_TMDADDR(sc, bix),
      sizeof(tmd));

  tmd1 = LE_LE32TOH(tmd.tmd1);
  if (tmd1 & LE_T1_OWN)
   break;

  ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;

  if (tmd1 & LE_T1_ERR) {
   tmd2 = LE_LE32TOH(tmd.tmd2);
   if (tmd2 & LE_T2_BUFF)
    if_printf(ifp, "transmit buffer error\n");
   else if (tmd2 & LE_T2_UFLO)
    if_printf(ifp, "underflow\n");
   if (tmd2 & (LE_T2_BUFF | LE_T2_UFLO)) {
    lance_init_locked(sc);
    return;
   }
   if (tmd2 & LE_T2_LCAR) {
    if (sc->sc_flags & LE_CARRIER)
     if_link_state_change(ifp,
         LINK_STATE_DOWN);
    sc->sc_flags &= ~LE_CARRIER;
    if (sc->sc_nocarrier)
     (*sc->sc_nocarrier)(sc);
    else
     if_printf(ifp, "lost carrier\n");
   }
   if (tmd2 & LE_T2_LCOL)
    if_inc_counter(ifp, IFCOUNTER_COLLISIONS, 1);
   if (tmd2 & LE_T2_RTRY) {



    if_inc_counter(ifp, IFCOUNTER_COLLISIONS, 16);
   }
   if_inc_counter(ifp, IFCOUNTER_OERRORS, 1);
  } else {
   if (tmd1 & LE_T1_ONE)
    if_inc_counter(ifp, IFCOUNTER_COLLISIONS, 1);
   else if (tmd1 & LE_T1_MORE)

    if_inc_counter(ifp, IFCOUNTER_COLLISIONS, 2);
   if_inc_counter(ifp, IFCOUNTER_OPACKETS, 1);
  }

  if (++bix == sc->sc_ntbuf)
   bix = 0;

  --sc->sc_no_td;
 }

 sc->sc_first_td = bix;

 sc->sc_wdog_timer = sc->sc_no_td > 0 ? 5 : 0;
}
