
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct ieee80211vap {int iv_flags_ht; } ;
struct ieee80211_tx_ampdu {int txa_tid; } ;
struct ieee80211_node {int ni_chw; int ni_flags; struct ieee80211_tx_ampdu* ni_tx_ampdu; scalar_t__ ni_htstbc; scalar_t__ ni_htopmode; TYPE_1__* ni_chan; int ni_htctlchan; int ni_ht2ndchan; int ni_htcap; int ni_ic; struct ieee80211vap* ni_vap; } ;
struct TYPE_7__ {int ic_ieee; } ;


 int IEEE80211_FHT_HT ;
 int IEEE80211_FHT_RIFS ;
 int IEEE80211_FHT_SHORTGI20 ;
 int IEEE80211_FHT_SHORTGI40 ;
 int IEEE80211_HTCAP_CHWIDTH40 ;
 int IEEE80211_HTCAP_SHORTGI20 ;
 int IEEE80211_HTCAP_SHORTGI40 ;
 int IEEE80211_HTINFO_2NDCHAN_ABOVE ;
 int IEEE80211_HTINFO_2NDCHAN_BELOW ;
 int IEEE80211_HTINFO_2NDCHAN_NONE ;
 scalar_t__ IEEE80211_IS_CHAN_HT40 (TYPE_1__*) ;
 scalar_t__ IEEE80211_IS_CHAN_HT40D (TYPE_1__*) ;
 scalar_t__ IEEE80211_IS_CHAN_HT40U (TYPE_1__*) ;
 int IEEE80211_NODE_AMPDU ;
 int IEEE80211_NODE_HT ;
 int IEEE80211_NODE_RIFS ;
 int KASSERT (int,char*) ;
 int WME_NUM_TID ;
 TYPE_1__* ieee80211_ht_adjust_channel (int ,TYPE_1__*,int ) ;
 int ieee80211_htchanflags (TYPE_1__*) ;
 int ieee80211_txampdu_init_pps (struct ieee80211_tx_ampdu*) ;

void
ieee80211_ht_wds_init(struct ieee80211_node *ni)
{
 struct ieee80211vap *vap = ni->ni_vap;
 struct ieee80211_tx_ampdu *tap;
 int tid;

 KASSERT(vap->iv_flags_ht & IEEE80211_FHT_HT, ("no HT requested"));
 ni->ni_chan = ieee80211_ht_adjust_channel(ni->ni_ic,
     ni->ni_chan, ieee80211_htchanflags(ni->ni_chan));

 ni->ni_htcap = 0;
 if (vap->iv_flags_ht & IEEE80211_FHT_SHORTGI20)
  ni->ni_htcap |= IEEE80211_HTCAP_SHORTGI20;
 if (IEEE80211_IS_CHAN_HT40(ni->ni_chan)) {
  ni->ni_htcap |= IEEE80211_HTCAP_CHWIDTH40;
  ni->ni_chw = 40;
  if (IEEE80211_IS_CHAN_HT40U(ni->ni_chan))
   ni->ni_ht2ndchan = IEEE80211_HTINFO_2NDCHAN_ABOVE;
  else if (IEEE80211_IS_CHAN_HT40D(ni->ni_chan))
   ni->ni_ht2ndchan = IEEE80211_HTINFO_2NDCHAN_BELOW;
  if (vap->iv_flags_ht & IEEE80211_FHT_SHORTGI40)
   ni->ni_htcap |= IEEE80211_HTCAP_SHORTGI40;
 } else {
  ni->ni_chw = 20;
  ni->ni_ht2ndchan = IEEE80211_HTINFO_2NDCHAN_NONE;
 }
 ni->ni_htctlchan = ni->ni_chan->ic_ieee;
 if (vap->iv_flags_ht & IEEE80211_FHT_RIFS)
  ni->ni_flags |= IEEE80211_NODE_RIFS;


 ni->ni_htopmode = 0;
 ni->ni_htstbc = 0;

 for (tid = 0; tid < WME_NUM_TID; tid++) {
  tap = &ni->ni_tx_ampdu[tid];
  tap->txa_tid = tid;
  ieee80211_txampdu_init_pps(tap);
 }

 ni->ni_flags |= IEEE80211_NODE_HT | IEEE80211_NODE_AMPDU;
}
