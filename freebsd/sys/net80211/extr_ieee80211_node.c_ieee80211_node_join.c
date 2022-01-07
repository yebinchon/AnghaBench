
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct ieee80211vap {int iv_max_aid; TYPE_1__* iv_auth; int iv_sta_assoc; int * iv_aid_bitmap; } ;
struct ieee80211com {int ic_flags; int (* ic_newassoc ) (struct ieee80211_node*,int) ;int ic_bsschan; int ic_sta_assoc; } ;
struct ieee80211_node {scalar_t__ ni_associd; int ni_flags; int ni_chw; int ni_jointime; struct ieee80211vap* ni_vap; struct ieee80211com* ni_ic; } ;
struct TYPE_2__ {int (* ia_node_join ) (struct ieee80211_node*) ;} ;


 int IEEE80211_AID_ISSET (struct ieee80211vap*,int) ;
 int IEEE80211_AID_SET (struct ieee80211vap*,int) ;
 scalar_t__ IEEE80211_ATH_CAP (struct ieee80211vap*,struct ieee80211_node*,int ) ;
 int IEEE80211_FC0_SUBTYPE_ASSOC_RESP ;
 int IEEE80211_F_SHPREAMBLE ;
 int IEEE80211_F_SHSLOT ;
 int IEEE80211_F_USEPROT ;
 scalar_t__ IEEE80211_IS_CHAN_ANYG (int ) ;
 scalar_t__ IEEE80211_IS_CHAN_FULL (int ) ;
 scalar_t__ IEEE80211_IS_CHAN_HT (int ) ;
 scalar_t__ IEEE80211_IS_CHAN_VHT (int ) ;
 int IEEE80211_LOCK (struct ieee80211com*) ;
 int IEEE80211_MSG_ASSOC ;
 int IEEE80211_MSG_DEBUG ;
 int IEEE80211_NODE_AID (struct ieee80211_node*) ;
 int IEEE80211_NODE_AMPDU ;
 int IEEE80211_NODE_FF ;
 int IEEE80211_NODE_HT ;
 int IEEE80211_NODE_MIMO_PS ;
 int IEEE80211_NODE_MIMO_RTS ;
 int IEEE80211_NODE_QOS ;
 int IEEE80211_NODE_RIFS ;
 int IEEE80211_NODE_TURBOP ;
 int IEEE80211_NOTE (struct ieee80211vap*,int,struct ieee80211_node*,char*,int ,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*) ;
 int IEEE80211_SEND_MGMT (struct ieee80211_node*,int,int ) ;
 int IEEE80211_STATUS_SUCCESS ;
 int IEEE80211_STATUS_TOOMANY ;
 int IEEE80211_UNLOCK (struct ieee80211com*) ;
 int KASSERT (int ,char*) ;
 int ieee80211_ht_node_join (struct ieee80211_node*) ;
 int ieee80211_node_join_11g (struct ieee80211_node*) ;
 int ieee80211_node_leave (struct ieee80211_node*) ;
 int ieee80211_node_setuptxparms (struct ieee80211_node*) ;
 int ieee80211_notify_node_join (struct ieee80211_node*,int) ;
 int ieee80211_ratectl_node_init (struct ieee80211_node*) ;
 int ieee80211_vht_node_join (struct ieee80211_node*) ;
 int stub1 (struct ieee80211_node*,int) ;
 int stub2 (struct ieee80211_node*) ;
 int time_uptime ;

void
ieee80211_node_join(struct ieee80211_node *ni, int resp)
{
 struct ieee80211com *ic = ni->ni_ic;
 struct ieee80211vap *vap = ni->ni_vap;
 int newassoc;

 if (ni->ni_associd == 0) {
  uint16_t aid;

  KASSERT(vap->iv_aid_bitmap != ((void*)0), ("no aid bitmap"));




  for (aid = 1; aid < vap->iv_max_aid; aid++) {
   if (!IEEE80211_AID_ISSET(vap, aid))
    break;
  }
  if (aid >= vap->iv_max_aid) {
   IEEE80211_SEND_MGMT(ni, resp, IEEE80211_STATUS_TOOMANY);
   ieee80211_node_leave(ni);
   return;
  }
  ni->ni_associd = aid | 0xc000;
  ni->ni_jointime = time_uptime;
  IEEE80211_LOCK(ic);
  IEEE80211_AID_SET(vap, ni->ni_associd);
  vap->iv_sta_assoc++;
  ic->ic_sta_assoc++;

  if (IEEE80211_IS_CHAN_HT(ic->ic_bsschan))
   ieee80211_ht_node_join(ni);
  if (IEEE80211_IS_CHAN_VHT(ic->ic_bsschan))
   ieee80211_vht_node_join(ni);
  if (IEEE80211_IS_CHAN_ANYG(ic->ic_bsschan) &&
      IEEE80211_IS_CHAN_FULL(ic->ic_bsschan))
   ieee80211_node_join_11g(ni);
  IEEE80211_UNLOCK(ic);

  newassoc = 1;
 } else
  newassoc = 0;




 IEEE80211_NOTE(vap, IEEE80211_MSG_ASSOC | IEEE80211_MSG_DEBUG, ni,
     "station associated at aid %d: %s preamble, %s slot time%s%s%s%s%s%s%s%s",
     IEEE80211_NODE_AID(ni),
     ic->ic_flags & IEEE80211_F_SHPREAMBLE ? "short" : "long",
     ic->ic_flags & IEEE80211_F_SHSLOT ? "short" : "long",
     ic->ic_flags & IEEE80211_F_USEPROT ? ", protection" : "",
     ni->ni_flags & IEEE80211_NODE_QOS ? ", QoS" : "",

     ni->ni_flags & IEEE80211_NODE_HT ?
  (ni->ni_chw == 40 ? ", HT40" : ", HT20") : "",
     ni->ni_flags & IEEE80211_NODE_AMPDU ? " (+AMPDU)" : "",
     ni->ni_flags & IEEE80211_NODE_MIMO_RTS ? " (+SMPS-DYN)" :
         ni->ni_flags & IEEE80211_NODE_MIMO_PS ? " (+SMPS)" : "",
     ni->ni_flags & IEEE80211_NODE_RIFS ? " (+RIFS)" : "",
     IEEE80211_ATH_CAP(vap, ni, IEEE80211_NODE_FF) ?
  ", fast-frames" : "",
     IEEE80211_ATH_CAP(vap, ni, IEEE80211_NODE_TURBOP) ?
  ", turbo" : ""
 );

 ieee80211_node_setuptxparms(ni);
 ieee80211_ratectl_node_init(ni);

 if (ic->ic_newassoc != ((void*)0))
  ic->ic_newassoc(ni, newassoc);
 IEEE80211_SEND_MGMT(ni, resp, IEEE80211_STATUS_SUCCESS);

 if (vap->iv_auth->ia_node_join != ((void*)0))
  vap->iv_auth->ia_node_join(ni);
 ieee80211_notify_node_join(ni,
     resp == IEEE80211_FC0_SUBTYPE_ASSOC_RESP);
}
