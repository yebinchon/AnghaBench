
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int txrate ;
struct ndis_softc {int dummy; } ;
struct ifnet {struct ieee80211vap* if_softc; } ;
struct ifmediareq {int dummy; } ;
struct ieee80211vap {TYPE_2__* iv_bss; TYPE_1__* iv_ic; } ;
struct TYPE_4__ {int ni_txrate; } ;
struct TYPE_3__ {struct ndis_softc* ic_softc; } ;


 int NDIS_INITIALIZED (struct ndis_softc*) ;
 int OID_GEN_LINK_SPEED ;
 int ieee80211_media_status (struct ifnet*,struct ifmediareq*) ;
 scalar_t__ ndis_get_info (struct ndis_softc*,int ,int*,int*) ;

__attribute__((used)) static void
ndis_media_status(struct ifnet *ifp, struct ifmediareq *imr)
{
 struct ieee80211vap *vap = ifp->if_softc;
 struct ndis_softc *sc = vap->iv_ic->ic_softc;
 uint32_t txrate;
 int len;

 if (!NDIS_INITIALIZED(sc))
  return;

 len = sizeof(txrate);
 if (ndis_get_info(sc, OID_GEN_LINK_SPEED, &txrate, &len) == 0)
  vap->iv_bss->ni_txrate = txrate / 5000;
 ieee80211_media_status(ifp, imr);
}
