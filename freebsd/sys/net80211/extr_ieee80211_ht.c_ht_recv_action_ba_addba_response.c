
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_2__ {int is_addba_badbawinsize; int is_addba_badpolicy; int is_addba_badtoken; int is_addba_norequest; } ;
struct ieee80211vap {TYPE_1__ iv_stats; } ;
struct ieee80211com {int (* ic_addba_response ) (struct ieee80211_node*,struct ieee80211_tx_ampdu*,int ,int ,int ) ;} ;
struct ieee80211_tx_ampdu {int txa_flags; int txa_token; } ;
struct ieee80211_node {int ni_macaddr; struct ieee80211_tx_ampdu* ni_tx_ampdu; struct ieee80211vap* ni_vap; struct ieee80211com* ni_ic; } ;
struct ieee80211_frame {int dummy; } ;


 int IEEE80211_AGGR_BAWMAX ;
 int IEEE80211_AGGR_IMMEDIATE ;
 int IEEE80211_AGGR_XCHGPEND ;
 int IEEE80211_BAPS_BUFSIZ ;
 int IEEE80211_BAPS_POLICY ;
 int IEEE80211_BAPS_TID ;
 int IEEE80211_DISCARD_MAC (struct ieee80211vap*,int,int ,char*,char*,int,int,int,...) ;
 int IEEE80211_MSG_11N ;
 int IEEE80211_MSG_ACTION ;
 int IEEE80211_NOTE (struct ieee80211vap*,int,struct ieee80211_node*,char*,int,int ,int ,int,int,int ) ;
 int MS (int ,int ) ;
 int le16dec (int const*) ;
 int stub1 (struct ieee80211_node*,struct ieee80211_tx_ampdu*,int ,int ,int ) ;

__attribute__((used)) static int
ht_recv_action_ba_addba_response(struct ieee80211_node *ni,
 const struct ieee80211_frame *wh,
 const uint8_t *frm, const uint8_t *efrm)
{
 struct ieee80211com *ic = ni->ni_ic;
 struct ieee80211vap *vap = ni->ni_vap;
 struct ieee80211_tx_ampdu *tap;
 uint8_t dialogtoken, policy;
 uint16_t baparamset, batimeout, code;
 int tid, bufsiz;

 dialogtoken = frm[2];
 code = le16dec(frm+3);
 baparamset = le16dec(frm+5);
 tid = MS(baparamset, IEEE80211_BAPS_TID);
 bufsiz = MS(baparamset, IEEE80211_BAPS_BUFSIZ);
 policy = MS(baparamset, IEEE80211_BAPS_POLICY);
 batimeout = le16dec(frm+7);

 tap = &ni->ni_tx_ampdu[tid];
 if ((tap->txa_flags & IEEE80211_AGGR_XCHGPEND) == 0) {
  IEEE80211_DISCARD_MAC(vap,
      IEEE80211_MSG_ACTION | IEEE80211_MSG_11N,
      ni->ni_macaddr, "ADDBA response",
      "no pending ADDBA, tid %d dialogtoken %u "
      "code %d", tid, dialogtoken, code);
  vap->iv_stats.is_addba_norequest++;
  return 0;
 }
 if (dialogtoken != tap->txa_token) {
  IEEE80211_DISCARD_MAC(vap,
      IEEE80211_MSG_ACTION | IEEE80211_MSG_11N,
      ni->ni_macaddr, "ADDBA response",
      "dialogtoken mismatch: waiting for %d, "
      "received %d, tid %d code %d",
      tap->txa_token, dialogtoken, tid, code);
  vap->iv_stats.is_addba_badtoken++;
  return 0;
 }

 if (policy != (tap->txa_flags & IEEE80211_AGGR_IMMEDIATE)) {
  IEEE80211_DISCARD_MAC(vap,
      IEEE80211_MSG_ACTION | IEEE80211_MSG_11N,
      ni->ni_macaddr, "ADDBA response",
      "policy mismatch: expecting %s, "
      "received %s, tid %d code %d",
      tap->txa_flags & IEEE80211_AGGR_IMMEDIATE,
      policy, tid, code);
  vap->iv_stats.is_addba_badpolicy++;
  return 0;
 }
 IEEE80211_NOTE(vap, IEEE80211_MSG_ACTION | IEEE80211_MSG_11N, ni,
     "recv ADDBA response: dialogtoken %u code %d "
     "baparamset 0x%x (tid %d bufsiz %d) batimeout %d",
     dialogtoken, code, baparamset, tid, bufsiz,
     batimeout);
 ic->ic_addba_response(ni, tap, code, baparamset, batimeout);
 return 0;
}
