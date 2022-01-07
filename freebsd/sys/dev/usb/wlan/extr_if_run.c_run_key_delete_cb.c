
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
struct run_softc {int dummy; } ;
struct ieee80211_key {int wk_flags; int wk_keyix; scalar_t__ wk_pad; } ;
struct run_cmdq {struct ieee80211_key key; struct run_softc* arg1; } ;


 int IEEE80211_KEY_GROUP ;
 int MA_OWNED ;
 int RT2860_SKEY_MODE_0_7 ;
 int RT2860_WCID_ATTR (scalar_t__) ;
 int RT2860_WCID_ENTRY (scalar_t__) ;
 int RUN_DEBUG_KEY ;
 int RUN_DPRINTF (struct run_softc*,int ,char*,...) ;
 int RUN_LOCK_ASSERT (struct run_softc*,int ) ;
 int run_read (struct run_softc*,int ,int*) ;
 int run_set_region_4 (struct run_softc*,int ,int ,int) ;
 int run_write (struct run_softc*,int ,int) ;

__attribute__((used)) static void
run_key_delete_cb(void *arg)
{
 struct run_cmdq *cmdq = arg;
 struct run_softc *sc = cmdq->arg1;
 struct ieee80211_key *k = &cmdq->key;
 uint32_t attr;
 uint8_t wcid;

 RUN_LOCK_ASSERT(sc, MA_OWNED);

 if (k->wk_flags & IEEE80211_KEY_GROUP) {

  RUN_DPRINTF(sc, RUN_DEBUG_KEY, "removing group key\n");
  run_read(sc, RT2860_SKEY_MODE_0_7, &attr);
  attr &= ~(0xf << (k->wk_keyix * 4));
  run_write(sc, RT2860_SKEY_MODE_0_7, attr);
 } else {

  RUN_DPRINTF(sc, RUN_DEBUG_KEY,
      "removing key for wcid %x\n", k->wk_pad);

  wcid = k->wk_pad;
  run_read(sc, RT2860_WCID_ATTR(wcid), &attr);
  attr &= ~0xf;
  run_write(sc, RT2860_WCID_ATTR(wcid), attr);
  run_set_region_4(sc, RT2860_WCID_ENTRY(wcid), 0, 8);
 }

 k->wk_pad = 0;
}
