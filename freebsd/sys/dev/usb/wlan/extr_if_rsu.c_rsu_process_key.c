
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rsu_softc {int del_key_task; int free_keys_bmap; int sc_running; struct ieee80211_key const** group_keys; } ;
struct ieee80211vap {struct ieee80211_key const* iv_nw_keys; TYPE_1__* iv_ic; } ;
struct ieee80211_key {int wk_flags; size_t wk_keyix; } ;
struct TYPE_2__ {struct rsu_softc* ic_softc; } ;


 int IEEE80211_KEY_SWCRYPT ;
 size_t IEEE80211_WEP_NKID ;
 int KASSERT (int,char*) ;
 int RSU_DELKEY_BMAP_LOCK (struct rsu_softc*) ;
 int RSU_DELKEY_BMAP_UNLOCK (struct rsu_softc*) ;
 int RSU_LOCK (struct rsu_softc*) ;
 int RSU_UNLOCK (struct rsu_softc*) ;
 size_t nitems (struct ieee80211_key const**) ;
 int rsu_delete_key (struct rsu_softc*,size_t) ;
 int rsu_set_key_group (struct rsu_softc*,struct ieee80211_key const*) ;
 int rsu_set_key_pair (struct rsu_softc*,struct ieee80211_key const*) ;
 int setbit (int ,size_t) ;
 int taskqueue_drain (int ,int *) ;
 int taskqueue_enqueue (int ,int *) ;
 int taskqueue_thread ;

__attribute__((used)) static int
rsu_process_key(struct ieee80211vap *vap, const struct ieee80211_key *k,
    int set)
{
 struct rsu_softc *sc = vap->iv_ic->ic_softc;
 int ret;

 if (k->wk_flags & IEEE80211_KEY_SWCRYPT) {

  return (1);
 }


 if (&vap->iv_nw_keys[0] <= k &&
     k < &vap->iv_nw_keys[IEEE80211_WEP_NKID]) {
  KASSERT(k->wk_keyix < nitems(sc->group_keys),
      ("keyix %u > %zu\n", k->wk_keyix, nitems(sc->group_keys)));

  RSU_LOCK(sc);
  sc->group_keys[k->wk_keyix] = (set ? k : ((void*)0));
  if (!sc->sc_running) {

   RSU_UNLOCK(sc);
   return (1);
  }

  if (set)
   ret = rsu_set_key_group(sc, k);
  else
   ret = rsu_delete_key(sc, k->wk_keyix);
  RSU_UNLOCK(sc);

  return (!ret);
 }

 if (set) {

  taskqueue_drain(taskqueue_thread, &sc->del_key_task);

  RSU_LOCK(sc);
  ret = rsu_set_key_pair(sc, k);
  RSU_UNLOCK(sc);
 } else {
  RSU_DELKEY_BMAP_LOCK(sc);
  setbit(sc->free_keys_bmap, k->wk_keyix);
  RSU_DELKEY_BMAP_UNLOCK(sc);


  taskqueue_enqueue(taskqueue_thread, &sc->del_key_task);
  ret = 0;
 }

 return (!ret);
}
