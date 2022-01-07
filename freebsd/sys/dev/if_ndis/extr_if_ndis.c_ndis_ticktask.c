
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct ieee80211com {int ic_vaps; } ;
struct ndis_softc {int ndis_link; scalar_t__ ndis_sts; scalar_t__ ndis_80211; int ifp; struct ieee80211com ndis_ic; TYPE_2__* ndis_block; TYPE_1__* ndis_chars; } ;
struct ieee80211vap {int iv_ifp; } ;
typedef int * ndis_checkforhang_handler ;
typedef int device_object ;
struct TYPE_4__ {int nmb_miniportadapterctx; } ;
struct TYPE_3__ {int * nmc_checkhang_func; } ;


 int IEEE80211_S_RUN ;
 int IEEE80211_S_SCAN ;
 int LINK_STATE_DOWN ;
 int LINK_STATE_UP ;
 scalar_t__ MSCALL1 (int *,int ) ;
 int NDIS_INITIALIZED (struct ndis_softc*) ;
 int NDIS_LOCK (struct ndis_softc*) ;
 scalar_t__ NDIS_STATUS_MEDIA_CONNECT ;
 scalar_t__ NDIS_STATUS_MEDIA_DISCONNECT ;
 int NDIS_UNLOCK (struct ndis_softc*) ;
 struct ieee80211vap* TAILQ_FIRST (int *) ;
 scalar_t__ TRUE ;
 int ieee80211_new_state (struct ieee80211vap*,int ,int) ;
 int if_link_state_change (int ,int ) ;
 int ndis_getstate_80211 (struct ndis_softc*) ;
 int ndis_reset_nic (struct ndis_softc*) ;

__attribute__((used)) static void
ndis_ticktask(device_object *d, void *xsc)
{
 struct ndis_softc *sc = xsc;
 ndis_checkforhang_handler hangfunc;
 uint8_t rval;

 NDIS_LOCK(sc);
 if (!NDIS_INITIALIZED(sc)) {
  NDIS_UNLOCK(sc);
  return;
 }
 NDIS_UNLOCK(sc);

 hangfunc = sc->ndis_chars->nmc_checkhang_func;

 if (hangfunc != ((void*)0)) {
  rval = MSCALL1(hangfunc,
      sc->ndis_block->nmb_miniportadapterctx);
  if (rval == TRUE) {
   ndis_reset_nic(sc);
   return;
  }
 }

 NDIS_LOCK(sc);
 if (sc->ndis_link == 0 &&
     sc->ndis_sts == NDIS_STATUS_MEDIA_CONNECT) {
  sc->ndis_link = 1;
  if (sc->ndis_80211 != 0) {
   struct ieee80211com *ic = &sc->ndis_ic;
   struct ieee80211vap *vap = TAILQ_FIRST(&ic->ic_vaps);

   if (vap != ((void*)0)) {
    NDIS_UNLOCK(sc);
    ndis_getstate_80211(sc);
    ieee80211_new_state(vap, IEEE80211_S_RUN, -1);
    NDIS_LOCK(sc);
    if_link_state_change(vap->iv_ifp,
        LINK_STATE_UP);
   }
  } else
   if_link_state_change(sc->ifp, LINK_STATE_UP);
 }

 if (sc->ndis_link == 1 &&
     sc->ndis_sts == NDIS_STATUS_MEDIA_DISCONNECT) {
  sc->ndis_link = 0;
  if (sc->ndis_80211 != 0) {
   struct ieee80211com *ic = &sc->ndis_ic;
   struct ieee80211vap *vap = TAILQ_FIRST(&ic->ic_vaps);

   if (vap != ((void*)0)) {
    NDIS_UNLOCK(sc);
    ieee80211_new_state(vap, IEEE80211_S_SCAN, 0);
    NDIS_LOCK(sc);
    if_link_state_change(vap->iv_ifp,
        LINK_STATE_DOWN);
   }
  } else
   if_link_state_change(sc->ifp, LINK_STATE_DOWN);
 }

 NDIS_UNLOCK(sc);
}
