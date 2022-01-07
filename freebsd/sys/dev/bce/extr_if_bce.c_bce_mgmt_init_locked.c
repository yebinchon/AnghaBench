
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int dummy; } ;
struct bce_softc {int bce_flags; struct ifnet* bce_ifp; } ;


 int BCE_LOCK_ASSERT (struct bce_softc*) ;
 int BCE_MFW_ENABLE_FLAG ;
 int BCE_MISC_ENABLE_DEFAULT ;
 int BCE_MISC_ENABLE_SET_BITS ;
 int BCE_VERBOSE_RESET ;
 int BCE_VERBOSE_SPECIAL ;
 int DBENTER (int ) ;
 int DBEXIT (int ) ;
 int DBPRINT (struct bce_softc*,int ,char*) ;
 int DELAY (int) ;
 int REG_RD (struct bce_softc*,int ) ;
 int REG_WR (struct bce_softc*,int ,int ) ;
 int bce_ifmedia_upd_locked (struct ifnet*) ;

__attribute__((used)) static void
bce_mgmt_init_locked(struct bce_softc *sc)
{
 struct ifnet *ifp;

 DBENTER(BCE_VERBOSE_RESET);

 BCE_LOCK_ASSERT(sc);


 if (!(sc->bce_flags & BCE_MFW_ENABLE_FLAG)) {
  DBPRINT(sc, BCE_VERBOSE_SPECIAL,
      "No management firmware running...\n");
  goto bce_mgmt_init_locked_exit;
 }

 ifp = sc->bce_ifp;


 REG_WR(sc, BCE_MISC_ENABLE_SET_BITS, BCE_MISC_ENABLE_DEFAULT);
 REG_RD(sc, BCE_MISC_ENABLE_SET_BITS);
 DELAY(20);

 bce_ifmedia_upd_locked(ifp);

bce_mgmt_init_locked_exit:
 DBEXIT(BCE_VERBOSE_RESET);
}
