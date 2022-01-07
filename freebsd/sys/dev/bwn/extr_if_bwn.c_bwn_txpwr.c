
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bwn_softc {int dummy; } ;
struct TYPE_2__ {int (* set_txpwr ) (struct bwn_mac*) ;} ;
struct bwn_mac {scalar_t__ mac_status; TYPE_1__ mac_phy; struct bwn_softc* mac_sc; } ;


 int BWN_LOCK (struct bwn_softc*) ;
 scalar_t__ BWN_MAC_STATUS_STARTED ;
 int BWN_UNLOCK (struct bwn_softc*) ;
 int stub1 (struct bwn_mac*) ;

__attribute__((used)) static void
bwn_txpwr(void *arg, int npending)
{
 struct bwn_mac *mac = arg;
 struct bwn_softc *sc;

 if (mac == ((void*)0))
  return;

 sc = mac->mac_sc;

 BWN_LOCK(sc);
 if (mac->mac_status >= BWN_MAC_STATUS_STARTED &&
     mac->mac_phy.set_txpwr != ((void*)0))
  mac->mac_phy.set_txpwr(mac);
 BWN_UNLOCK(sc);
}
