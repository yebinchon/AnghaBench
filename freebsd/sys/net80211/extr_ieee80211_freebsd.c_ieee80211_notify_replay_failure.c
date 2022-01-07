
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int64_t ;
struct ifnet {int if_vnet; } ;
struct ieee80211vap {struct ifnet* iv_ifp; } ;
struct ieee80211_replay_event {scalar_t__ iev_keyix; scalar_t__ iev_rsc; scalar_t__ iev_keyrsc; int iev_cipher; int iev_src; int iev_dst; } ;
struct ieee80211_key {scalar_t__ wk_keyix; scalar_t__ wk_rxkeyix; scalar_t__* wk_keyrsc; TYPE_1__* wk_cipher; } ;
struct ieee80211_frame {int i_addr2; int i_addr1; } ;
typedef int intmax_t ;
typedef int iev ;
struct TYPE_2__ {int ic_cipher; int ic_name; } ;


 int CURVNET_RESTORE () ;
 int CURVNET_SET (int ) ;
 int IEEE80211_ADDR_COPY (int ,int ) ;
 scalar_t__ IEEE80211_KEYIX_NONE ;
 int IEEE80211_MSG_CRYPTO ;
 int IEEE80211_NOTE_MAC (struct ieee80211vap*,int ,int ,char*,int ,int,int ,int ,scalar_t__,scalar_t__) ;
 int RTM_IEEE80211_REPLAY ;
 int rt_ieee80211msg (struct ifnet*,int ,struct ieee80211_replay_event*,int) ;

void
ieee80211_notify_replay_failure(struct ieee80211vap *vap,
 const struct ieee80211_frame *wh, const struct ieee80211_key *k,
 u_int64_t rsc, int tid)
{
 struct ifnet *ifp = vap->iv_ifp;

 IEEE80211_NOTE_MAC(vap, IEEE80211_MSG_CRYPTO, wh->i_addr2,
     "%s replay detected tid %d <rsc %ju, csc %ju, keyix %u rxkeyix %u>",
     k->wk_cipher->ic_name, tid, (intmax_t) rsc,
     (intmax_t) k->wk_keyrsc[tid],
     k->wk_keyix, k->wk_rxkeyix);

 if (ifp != ((void*)0)) {
  struct ieee80211_replay_event iev;

  IEEE80211_ADDR_COPY(iev.iev_dst, wh->i_addr1);
  IEEE80211_ADDR_COPY(iev.iev_src, wh->i_addr2);
  iev.iev_cipher = k->wk_cipher->ic_cipher;
  if (k->wk_rxkeyix != IEEE80211_KEYIX_NONE)
   iev.iev_keyix = k->wk_rxkeyix;
  else
   iev.iev_keyix = k->wk_keyix;
  iev.iev_keyrsc = k->wk_keyrsc[tid];
  iev.iev_rsc = rsc;
  CURVNET_SET(ifp->if_vnet);
  rt_ieee80211msg(ifp, RTM_IEEE80211_REPLAY, &iev, sizeof(iev));
  CURVNET_RESTORE();
 }
}
