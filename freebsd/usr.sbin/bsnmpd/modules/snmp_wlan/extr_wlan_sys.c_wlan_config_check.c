
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlan_iface {int drivercaps; int beacon_interval; int dtim_period; int htcaps; int tdma_binterval; int tdma_slot_length; int tdma_slot_count; int tdma_slot; int smps_mode; void* short_gi; void* rifs; void* amsdu; void* ampdu; void* dot11n_pure; int mode; void* power_save; void* dynamic_wds; int frag_threshold; int tx_power; void* dturbo; void* fast_frames; void* dyn_frequency; void* packet_burst; } ;


 int IEEE80211_FRAG_MAX ;
 void* TruthValue_false ;
 int WlanDriverCaps_athFastFrames ;
 int WlanDriverCaps_athTurbo ;
 int WlanDriverCaps_burst ;
 int WlanDriverCaps_dfs ;
 int WlanDriverCaps_pmgt ;
 int WlanDriverCaps_tdma ;
 int WlanDriverCaps_txFrag ;
 int WlanDriverCaps_txPmgt ;
 int WlanDriverCaps_wds ;
 int WlanHTCaps_htcAmpdu ;
 int WlanHTCaps_htcAmsdu ;
 int WlanHTCaps_htcHt ;
 int WlanHTCaps_htcRifs ;
 int WlanHTCaps_htcSmps ;
 int WlanHTCaps_shortGi20 ;
 int WlanHTCaps_shortGi40 ;
 void* WlanIfaceDot11nPduType_disabled ;
 int WlanIfaceOperatingModeType_hostAp ;
 int WlanIfaceOperatingModeType_ibss ;
 int WlanIfaceOperatingModeType_meshPoint ;
 int wlanIfaceDot11nSMPSMode_disabled ;

__attribute__((used)) static int
wlan_config_check(struct wlan_iface *wif, int op)
{
 switch (op) {
 case 144:
  if ((wif->drivercaps & (0x1 << WlanDriverCaps_burst)) == 0) {
   wif->packet_burst = TruthValue_false;
   return (-1);
  }
  break;
 case 143:
  if ((wif->drivercaps & (0x1 << WlanDriverCaps_dfs)) == 0) {
   wif->dyn_frequency = TruthValue_false;
   return (-1);
  }
  break;
 case 140:
  if ((wif->drivercaps & (0x1 << WlanDriverCaps_athFastFrames))
      == 0) {
   wif->fast_frames = TruthValue_false;
   return (-1);
  }
  break;
 case 129:
  if ((wif->drivercaps & (0x1 << WlanDriverCaps_athTurbo)) == 0) {
   wif->dturbo = TruthValue_false;
   return (-1);
  }
  break;
 case 128:
  if ((wif->drivercaps & (0x1 << WlanDriverCaps_txPmgt)) == 0) {
   wif->tx_power = 0;
   return (-1);
  }
  break;
 case 139:
  if ((wif->drivercaps & (0x1 << WlanDriverCaps_txFrag)) == 0) {
   wif->frag_threshold = IEEE80211_FRAG_MAX;
   return (-1);
  }
  break;
 case 141:
  if ((wif->drivercaps & (0x1 << WlanDriverCaps_wds)) == 0) {
   wif->dynamic_wds = TruthValue_false;
   return (-1);
  }
  break;
 case 138:
  if ((wif->drivercaps & (0x1 << WlanDriverCaps_pmgt)) == 0) {
   wif->power_save = TruthValue_false;
   return (-1);
  }
  break;
 case 145:
  if (wif->mode != WlanIfaceOperatingModeType_hostAp &&
      wif->mode != WlanIfaceOperatingModeType_meshPoint &&
      wif->mode != WlanIfaceOperatingModeType_ibss) {
   wif->beacon_interval = 100;
   return (-1);
  }
  break;
 case 142:
  if (wif->mode != WlanIfaceOperatingModeType_hostAp &&
      wif->mode != WlanIfaceOperatingModeType_meshPoint &&
      wif->mode != WlanIfaceOperatingModeType_ibss) {
   wif->dtim_period = 1;
   return (-1);
  }
  break;
 case 137:
  if ((wif->htcaps & (0x1 << WlanHTCaps_htcHt)) == 0) {
   wif->dot11n_pure = TruthValue_false;
   return (-1);
  }
  break;
 case 147:
  if ((wif->htcaps & (0x1 << WlanHTCaps_htcAmpdu)) == 0) {
   wif->ampdu = WlanIfaceDot11nPduType_disabled;
   return (-1);
  }
  break;
 case 146:
  if ((wif->htcaps & (0x1 << WlanHTCaps_htcAmsdu)) == 0) {
   wif->amsdu = WlanIfaceDot11nPduType_disabled;
   return (-1);
  }
  break;
 case 136:
  if ((wif->htcaps & (0x1 << WlanHTCaps_htcRifs)) == 0) {
   wif->rifs = TruthValue_false;
   return (-1);
  }
  break;
 case 135:
  if ((wif->htcaps & (0x1 << WlanHTCaps_shortGi20 |
      0x1 << WlanHTCaps_shortGi40)) == 0) {
   wif->short_gi = TruthValue_false;
   return (-1);
  }
  break;
 case 134:
  if ((wif->htcaps & (0x1 << WlanHTCaps_htcSmps)) == 0) {
   wif->smps_mode = wlanIfaceDot11nSMPSMode_disabled;
   return (-1);
  }
  break;
 case 132:
  if ((wif->drivercaps & (0x1 << WlanDriverCaps_tdma)) == 0) {
   wif->tdma_slot = 0;
   return (-1);
  }
  break;
 case 131:
  if ((wif->drivercaps & (0x1 << WlanDriverCaps_tdma)) == 0) {
   wif->tdma_slot_count = 0;
   return (-1);
  }
  break;
 case 130:
  if ((wif->drivercaps & (0x1 << WlanDriverCaps_tdma)) == 0) {
   wif->tdma_slot_length = 0;
   return (-1);
  }
  break;
 case 133:
  if ((wif->drivercaps & (0x1 << WlanDriverCaps_tdma)) == 0) {
   wif->tdma_binterval = 0;
   return (-1);
  }
  break;
 default:
  break;
 }

 return (0);
}
