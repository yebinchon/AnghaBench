
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ieee80211vap {int iv_flags_ht; } ;
struct ieee80211_node {int ni_flags; int ni_chw; int ni_htstbc; int ni_htopmode; int ni_ht2ndchan; int ni_htctlchan; int ni_htrates; int ni_htparam; int ni_htcap; int ni_capinfo; int ni_rates; struct ieee80211vap* ni_vap; } ;
struct TYPE_6__ {int stbc; int OpMode; int AddChan; int ControlChan; } ;
struct TYPE_7__ {int HTCapabilitiesInfo; TYPE_1__ AddHtInfo; int HTRateBitMap; int MacHTParamInfo; int CapInfo; int LegacyRateBitMap; } ;
typedef TYPE_2__ MWL_HAL_PEERINFO ;


 int IEEE80211_FHT_SHORTGI20 ;
 int IEEE80211_FHT_SHORTGI40 ;
 int IEEE80211_HTCAP_CHWIDTH40 ;
 int IEEE80211_HTCAP_SHORTGI20 ;
 int IEEE80211_HTCAP_SHORTGI40 ;
 int IEEE80211_NODE_HT ;
 int get_htrate_bitmap (int *) ;
 int get_rate_bitmap (int *) ;
 int memset (TYPE_2__*,int ,int) ;

__attribute__((used)) static MWL_HAL_PEERINFO *
mkpeerinfo(MWL_HAL_PEERINFO *pi, const struct ieee80211_node *ni)
{
 const struct ieee80211vap *vap = ni->ni_vap;

 memset(pi, 0, sizeof(*pi));
 pi->LegacyRateBitMap = get_rate_bitmap(&ni->ni_rates);
 pi->CapInfo = ni->ni_capinfo;
 if (ni->ni_flags & IEEE80211_NODE_HT) {

  pi->HTCapabilitiesInfo = ni->ni_htcap;

         pi->MacHTParamInfo = ni->ni_htparam;
  pi->HTRateBitMap = get_htrate_bitmap(&ni->ni_htrates);
  pi->AddHtInfo.ControlChan = ni->ni_htctlchan;
  pi->AddHtInfo.AddChan = ni->ni_ht2ndchan;
  pi->AddHtInfo.OpMode = ni->ni_htopmode;
  pi->AddHtInfo.stbc = ni->ni_htstbc;


  if ((vap->iv_flags_ht & IEEE80211_FHT_SHORTGI40) == 0)
   pi->HTCapabilitiesInfo &= ~IEEE80211_HTCAP_SHORTGI40;
  if ((vap->iv_flags_ht & IEEE80211_FHT_SHORTGI20) == 0)
   pi->HTCapabilitiesInfo &= ~IEEE80211_HTCAP_SHORTGI20;
  if (ni->ni_chw != 40)
   pi->HTCapabilitiesInfo &= ~IEEE80211_HTCAP_CHWIDTH40;
 }
 return pi;
}
