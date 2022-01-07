
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int tx_mcs_map; int rx_mcs_map; } ;
struct ieee80211vap {int iv_flags_vht; int iv_flags_ht; TYPE_1__ iv_vht_mcsinfo; int iv_vhtcaps; } ;
struct TYPE_5__ {int tx_mcs_map; } ;
struct ieee80211_node {TYPE_2__ ni_vht_mcsinfo; int ni_vhtcap; struct ieee80211vap* ni_vap; } ;
struct TYPE_6__ {int tx_mcs_map; scalar_t__ tx_highest; scalar_t__ rx_highest; int rx_mcs_map; } ;
struct ieee80211_ie_vhtcap {int len; int vht_cap_info; TYPE_3__ supp_mcs; int ie; } ;


 int IEEE80211_ELEMID_VHT_CAP ;
 int IEEE80211_FHT_STBC_RX ;
 int IEEE80211_FHT_STBC_TX ;
 int IEEE80211_FVHT_USEVHT160 ;
 int IEEE80211_FVHT_USEVHT80P80 ;
 int IEEE80211_VHTCAP_BEAMFORMEE_STS_MASK ;
 int IEEE80211_VHTCAP_HTC_VHT ;
 int IEEE80211_VHTCAP_MAX_A_MPDU_LENGTH_EXPONENT_MASK ;
 int IEEE80211_VHTCAP_MAX_MPDU_MASK ;
 int IEEE80211_VHTCAP_MU_BEAMFORMEE_CAPABLE ;
 int IEEE80211_VHTCAP_MU_BEAMFORMER_CAPABLE ;
 int IEEE80211_VHTCAP_RXLDPC ;
 int IEEE80211_VHTCAP_RXSTBC_MASK ;
 int IEEE80211_VHTCAP_RX_ANTENNA_PATTERN ;
 int IEEE80211_VHTCAP_SHORT_GI_160 ;
 int IEEE80211_VHTCAP_SHORT_GI_80 ;
 int IEEE80211_VHTCAP_SOUNDING_DIMENSIONS_MASK ;
 int IEEE80211_VHTCAP_SUPP_CHAN_WIDTH_MASK ;
 int IEEE80211_VHTCAP_SU_BEAMFORMEE_CAPABLE ;
 int IEEE80211_VHTCAP_SU_BEAMFORMER_CAPABLE ;
 int IEEE80211_VHTCAP_TXSTBC ;
 int IEEE80211_VHTCAP_TX_ANTENNA_PATTERN ;
 int IEEE80211_VHTCAP_VHT_LINK_ADAPTATION_VHT_MASK ;
 int IEEE80211_VHTCAP_VHT_TXOP_PS ;
 int MAX (int,int) ;
 int MIN (int,int) ;
 int MS (int ,int) ;
 int SM (int,int) ;

void
ieee80211_vht_get_vhtcap_ie(struct ieee80211_node *ni,
    struct ieee80211_ie_vhtcap *vhtcap, int opmode)
{
 struct ieee80211vap *vap = ni->ni_vap;

 uint32_t val, val1, val2;
 uint32_t new_vhtcap;
 int i;

 vhtcap->ie = IEEE80211_ELEMID_VHT_CAP;
 vhtcap->len = sizeof(struct ieee80211_ie_vhtcap) - 2;





 new_vhtcap = 0;
 val2 = val1 = MS(vap->iv_vhtcaps, IEEE80211_VHTCAP_MAX_MPDU_MASK);
 if (opmode == 1) {
  val2 = MS(ni->ni_vhtcap, IEEE80211_VHTCAP_MAX_MPDU_MASK);
 }
 val = MIN(val1, val2);
 new_vhtcap |= SM(val, IEEE80211_VHTCAP_MAX_MPDU_MASK);


 val2 = val1 = MS(vap->iv_vhtcaps,
     IEEE80211_VHTCAP_SUPP_CHAN_WIDTH_MASK);
 if (opmode == 1) {
  val2 = MS(ni->ni_vhtcap,
      IEEE80211_VHTCAP_SUPP_CHAN_WIDTH_MASK);
 }
 if ((val2 == 2) &&
     ((vap->iv_flags_vht & IEEE80211_FVHT_USEVHT80P80) == 0))
  val2 = 1;
 if ((val2 == 1) &&
     ((vap->iv_flags_vht & IEEE80211_FVHT_USEVHT160) == 0))
  val2 = 0;
 val = MIN(val1, val2);
 new_vhtcap |= SM(val, IEEE80211_VHTCAP_SUPP_CHAN_WIDTH_MASK);


 val2 = val1 = MS(vap->iv_vhtcaps, IEEE80211_VHTCAP_RXLDPC);
 if (opmode == 1) {
  val2 = MS(ni->ni_vhtcap, IEEE80211_VHTCAP_RXLDPC);
 }
 val = MIN(val1, val2);
 new_vhtcap |= SM(val, IEEE80211_VHTCAP_RXLDPC);


 val2 = val1 = MS(vap->iv_vhtcaps, IEEE80211_VHTCAP_SHORT_GI_80);
 if (opmode == 1) {
  val2 = MS(ni->ni_vhtcap, IEEE80211_VHTCAP_SHORT_GI_80);
 }
 val = MIN(val1, val2);
 new_vhtcap |= SM(val, IEEE80211_VHTCAP_SHORT_GI_80);


 val2 = val1 = MS(vap->iv_vhtcaps, IEEE80211_VHTCAP_SHORT_GI_160);
 if (opmode == 1) {
  val2 = MS(ni->ni_vhtcap, IEEE80211_VHTCAP_SHORT_GI_160);
 }
 val = MIN(val1, val2);
 new_vhtcap |= SM(val, IEEE80211_VHTCAP_SHORT_GI_160);
 val2 = val1 = MS(vap->iv_vhtcaps, IEEE80211_VHTCAP_TXSTBC);
 if (opmode == 1) {

  val2 = !! MS(ni->ni_vhtcap, IEEE80211_VHTCAP_RXSTBC_MASK);
 }
 val = MIN(val1, val2);

 if ((vap->iv_flags_ht & IEEE80211_FHT_STBC_TX) == 0)
  val = 0;
 new_vhtcap |= SM(val, IEEE80211_VHTCAP_TXSTBC);


 val2 = val1 = MS(vap->iv_vhtcaps, IEEE80211_VHTCAP_RXSTBC_MASK);
 if (opmode == 1) {

  val2 = MS(ni->ni_vhtcap, IEEE80211_VHTCAP_TXSTBC);
 }
 val = MIN(val1, val2);

 if ((vap->iv_flags_ht & IEEE80211_FHT_STBC_RX) == 0)
  val = 0;
 new_vhtcap |= SM(val, IEEE80211_VHTCAP_RXSTBC_MASK);






 if (val == 0)
  new_vhtcap &= ~IEEE80211_VHTCAP_TXSTBC;
 val2 = val1 = MS(vap->iv_vhtcaps,
     IEEE80211_VHTCAP_SU_BEAMFORMER_CAPABLE);
 if (opmode == 1) {
  val2 = MS(ni->ni_vhtcap,
      IEEE80211_VHTCAP_SU_BEAMFORMER_CAPABLE);
 }
 val = MIN(val1, val2);
 new_vhtcap |= SM(val, IEEE80211_VHTCAP_SU_BEAMFORMER_CAPABLE);


 val2 = val1 = MS(vap->iv_vhtcaps,
     IEEE80211_VHTCAP_SU_BEAMFORMEE_CAPABLE);
 if (opmode == 1) {
  val2 = MS(ni->ni_vhtcap,
      IEEE80211_VHTCAP_SU_BEAMFORMEE_CAPABLE);
 }
 val = MIN(val1, val2);
 new_vhtcap |= SM(val, IEEE80211_VHTCAP_SU_BEAMFORMEE_CAPABLE);


 val2 = val1 = MS(vap->iv_vhtcaps, IEEE80211_VHTCAP_BEAMFORMEE_STS_MASK);
 if (opmode == 1) {
  val2 = MS(ni->ni_vhtcap, IEEE80211_VHTCAP_BEAMFORMEE_STS_MASK);
 }
 val = MIN(val1, val2);
 if ((new_vhtcap & IEEE80211_VHTCAP_SU_BEAMFORMEE_CAPABLE) == 0)
  val = 0;
 new_vhtcap |= SM(val, IEEE80211_VHTCAP_BEAMFORMEE_STS_MASK);


 val2 = val1 = MS(vap->iv_vhtcaps,
     IEEE80211_VHTCAP_SOUNDING_DIMENSIONS_MASK);
 if (opmode == 1)
  val2 = MS(ni->ni_vhtcap,
      IEEE80211_VHTCAP_SOUNDING_DIMENSIONS_MASK);
 val = MIN(val1, val2);
 if ((new_vhtcap & IEEE80211_VHTCAP_SU_BEAMFORMER_CAPABLE) == 0)
  val = 0;
 new_vhtcap |= SM(val, IEEE80211_VHTCAP_SOUNDING_DIMENSIONS_MASK);





 val2 = val1 = MS(vap->iv_vhtcaps,
     IEEE80211_VHTCAP_MU_BEAMFORMER_CAPABLE);
 if (opmode == 1)
  val2 = MS(ni->ni_vhtcap,
      IEEE80211_VHTCAP_MU_BEAMFORMER_CAPABLE);
 val = MIN(val1, val2);
 if ((new_vhtcap & IEEE80211_VHTCAP_SU_BEAMFORMER_CAPABLE) == 0)
  val = 0;
 if (opmode != 1)
  val = 0;
 new_vhtcap |= SM(val, IEEE80211_VHTCAP_SU_BEAMFORMER_CAPABLE);





 val2 = val1 = MS(vap->iv_vhtcaps,
     IEEE80211_VHTCAP_MU_BEAMFORMEE_CAPABLE);
 if (opmode == 1)
  val2 = MS(ni->ni_vhtcap,
      IEEE80211_VHTCAP_MU_BEAMFORMEE_CAPABLE);
 val = MIN(val1, val2);
 if ((new_vhtcap & IEEE80211_VHTCAP_SU_BEAMFORMEE_CAPABLE) == 0)
  val = 0;
 if (opmode != 0)
  val = 0;
 new_vhtcap |= SM(val, IEEE80211_VHTCAP_SU_BEAMFORMEE_CAPABLE);


 val2 = val1 = MS(vap->iv_vhtcaps, IEEE80211_VHTCAP_VHT_TXOP_PS);
 if (opmode == 1)
  val2 = MS(ni->ni_vhtcap, IEEE80211_VHTCAP_VHT_TXOP_PS);
 val = MIN(val1, val2);
 new_vhtcap |= SM(val, IEEE80211_VHTCAP_VHT_TXOP_PS);


 val2 = val1 = MS(vap->iv_vhtcaps, IEEE80211_VHTCAP_HTC_VHT);
 if (opmode == 1)
  val2 = MS(ni->ni_vhtcap, IEEE80211_VHTCAP_HTC_VHT);
 val = MIN(val1, val2);
 new_vhtcap |= SM(val, IEEE80211_VHTCAP_HTC_VHT);



 val2 = val1 = MS(vap->iv_vhtcaps,
     IEEE80211_VHTCAP_MAX_A_MPDU_LENGTH_EXPONENT_MASK);
 if (opmode == 1)
  val2 = MS(ni->ni_vhtcap,
      IEEE80211_VHTCAP_MAX_A_MPDU_LENGTH_EXPONENT_MASK);
 val = MIN(val1, val2);
 new_vhtcap |= SM(val, IEEE80211_VHTCAP_MAX_A_MPDU_LENGTH_EXPONENT_MASK);





 val2 = val1 = MS(vap->iv_vhtcaps,
     IEEE80211_VHTCAP_VHT_LINK_ADAPTATION_VHT_MASK);
 if (opmode == 1)
  val2 = MS(ni->ni_vhtcap,
      IEEE80211_VHTCAP_VHT_LINK_ADAPTATION_VHT_MASK);
 val = MIN(val1, val2);
 if ((new_vhtcap & IEEE80211_VHTCAP_HTC_VHT) == 0)
  val = 0;
 new_vhtcap |= SM(val, IEEE80211_VHTCAP_VHT_LINK_ADAPTATION_VHT_MASK);







 val2 = val1 = MS(vap->iv_vhtcaps, IEEE80211_VHTCAP_RX_ANTENNA_PATTERN);
 if (opmode == 1)
  val2 = MS(ni->ni_vhtcap, IEEE80211_VHTCAP_RX_ANTENNA_PATTERN);
 val = MAX(val1, val2);
 new_vhtcap |= SM(val, IEEE80211_VHTCAP_RX_ANTENNA_PATTERN);


 val2 = val1 = MS(vap->iv_vhtcaps, IEEE80211_VHTCAP_TX_ANTENNA_PATTERN);
 if (opmode == 1)
  val2 = MS(ni->ni_vhtcap, IEEE80211_VHTCAP_TX_ANTENNA_PATTERN);
 val = MAX(val1, val2);
 new_vhtcap |= SM(val, IEEE80211_VHTCAP_TX_ANTENNA_PATTERN);
 vhtcap->supp_mcs.rx_mcs_map = vap->iv_vht_mcsinfo.rx_mcs_map;
 vhtcap->supp_mcs.rx_highest = 0;
 vhtcap->supp_mcs.tx_mcs_map = vap->iv_vht_mcsinfo.tx_mcs_map;
 vhtcap->supp_mcs.tx_highest = 0;

 vhtcap->vht_cap_info = new_vhtcap;
 if (opmode) {
  for (i = 0; i < 8; i++) {
   val1 = (vhtcap->supp_mcs.tx_mcs_map >> (i*2)) & 0x3;
   val2 = (ni->ni_vht_mcsinfo.tx_mcs_map >> (i*2)) & 0x3;
   val = MIN(val1, val2);
   if (val1 == 3 || val2 == 3)
    val = 3;
   vhtcap->supp_mcs.tx_mcs_map &= ~(0x3 << (i*2));
   vhtcap->supp_mcs.tx_mcs_map |= (val << (i*2));
  }
 }
}
