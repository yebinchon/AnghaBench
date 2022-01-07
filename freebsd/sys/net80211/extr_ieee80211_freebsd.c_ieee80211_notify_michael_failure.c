
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct ifnet {int if_vnet; } ;
struct TYPE_2__ {int is_rx_tkipmic; } ;
struct ieee80211vap {TYPE_1__ iv_stats; struct ifnet* iv_ifp; } ;
struct ieee80211_michael_event {int iev_keyix; int iev_cipher; int iev_src; int iev_dst; } ;
struct ieee80211_frame {int i_addr2; int i_addr1; } ;
typedef int iev ;


 int CURVNET_RESTORE () ;
 int CURVNET_SET (int ) ;
 int IEEE80211_ADDR_COPY (int ,int ) ;
 int IEEE80211_CIPHER_TKIP ;
 int IEEE80211_MSG_CRYPTO ;
 int IEEE80211_NOTE_MAC (struct ieee80211vap*,int ,int ,char*,int ) ;
 int RTM_IEEE80211_MICHAEL ;
 int rt_ieee80211msg (struct ifnet*,int ,struct ieee80211_michael_event*,int) ;

void
ieee80211_notify_michael_failure(struct ieee80211vap *vap,
 const struct ieee80211_frame *wh, u_int keyix)
{
 struct ifnet *ifp = vap->iv_ifp;

 IEEE80211_NOTE_MAC(vap, IEEE80211_MSG_CRYPTO, wh->i_addr2,
     "michael MIC verification failed <keyix %u>", keyix);
 vap->iv_stats.is_rx_tkipmic++;

 if (ifp != ((void*)0)) {
  struct ieee80211_michael_event iev;

  IEEE80211_ADDR_COPY(iev.iev_dst, wh->i_addr1);
  IEEE80211_ADDR_COPY(iev.iev_src, wh->i_addr2);
  iev.iev_cipher = IEEE80211_CIPHER_TKIP;
  iev.iev_keyix = keyix;
  CURVNET_SET(ifp->if_vnet);
  rt_ieee80211msg(ifp, RTM_IEEE80211_MICHAEL, &iev, sizeof(iev));
  CURVNET_RESTORE();
 }
}
