
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct ieee80211com {int (* ic_ampdu_rx_stop ) (struct ieee80211_node*,struct ieee80211_rx_ampdu*) ;int (* ic_addba_stop ) (struct ieee80211_node*,struct ieee80211_tx_ampdu*) ;} ;
struct ieee80211_tx_ampdu {int dummy; } ;
struct ieee80211_rx_ampdu {int dummy; } ;
struct ieee80211_node {struct ieee80211_rx_ampdu* ni_rx_ampdu; struct ieee80211_tx_ampdu* ni_tx_ampdu; int ni_vap; struct ieee80211com* ni_ic; } ;
struct ieee80211_frame {int dummy; } ;


 int IEEE80211_DELBAPS_INIT ;
 int IEEE80211_DELBAPS_TID ;
 int IEEE80211_MSG_11N ;
 int IEEE80211_MSG_ACTION ;
 int IEEE80211_NOTE (int ,int,struct ieee80211_node*,char*,int,int,int,int) ;
 int MS (int,int) ;
 int le16dec (int const*) ;
 int stub1 (struct ieee80211_node*,struct ieee80211_tx_ampdu*) ;
 int stub2 (struct ieee80211_node*,struct ieee80211_rx_ampdu*) ;

__attribute__((used)) static int
ht_recv_action_ba_delba(struct ieee80211_node *ni,
 const struct ieee80211_frame *wh,
 const uint8_t *frm, const uint8_t *efrm)
{
 struct ieee80211com *ic = ni->ni_ic;
 struct ieee80211_rx_ampdu *rap;
 struct ieee80211_tx_ampdu *tap;
 uint16_t baparamset, code;
 int tid;

 baparamset = le16dec(frm+2);
 code = le16dec(frm+4);

 tid = MS(baparamset, IEEE80211_DELBAPS_TID);

 IEEE80211_NOTE(ni->ni_vap, IEEE80211_MSG_ACTION | IEEE80211_MSG_11N, ni,
     "recv DELBA: baparamset 0x%x (tid %d initiator %d) "
     "code %d", baparamset, tid,
     MS(baparamset, IEEE80211_DELBAPS_INIT), code);

 if ((baparamset & IEEE80211_DELBAPS_INIT) == 0) {
  tap = &ni->ni_tx_ampdu[tid];
  ic->ic_addba_stop(ni, tap);
 } else {
  rap = &ni->ni_rx_ampdu[tid];
  ic->ic_ampdu_rx_stop(ni, rap);
 }
 return 0;
}
