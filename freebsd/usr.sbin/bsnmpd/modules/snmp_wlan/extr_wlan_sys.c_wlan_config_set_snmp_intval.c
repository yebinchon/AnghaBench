
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlan_iface {int tx_power; int frag_threshold; int rts_threshold; int bg_scan_idle; int bg_scan_interval; int beacons_missed; int beacon_interval; int dtim_period; int ampdu_density; int ampdu_limit; int amsdu_limit; int tdma_slot; int tdma_slot_count; int tdma_slot_length; int tdma_binterval; int smps_mode; void* short_gi; void* rifs; int ht_prot_mode; void* ht_compatible; void* ht_enabled; void* amsdu; void* ampdu; void* dot11n_pure; void* dot11g_pure; int do11g_protect; void* inact_process; void* hide_ssid; void* ap_bridge; void* power_save; void* dynamic_wds; void* dot11h; void* dot11d; int roam_mode; void* bg_scan; void* priv_subscribe; void* dturbo; void* fast_frames; void* dyn_frequency; void* packet_burst; } ;
 void* TruthValue_false ;
 void* TruthValue_true ;
 void* WlanIfaceDot11nPduType_disabled ;
 void* WlanIfaceDot11nPduType_rxOnly ;
 void* WlanIfaceDot11nPduType_txAndRx ;
 void* WlanIfaceDot11nPduType_txOnly ;
 int wlanIfaceDot11gProtMode_cts ;
 int wlanIfaceDot11gProtMode_off ;
 int wlanIfaceDot11gProtMode_rtscts ;
 int wlanIfaceDot11nHTProtMode_off ;
 int wlanIfaceDot11nHTProtMode_rts ;
 int wlanIfaceDot11nSMPSMode_disabled ;
 int wlanIfaceDot11nSMPSMode_dynamic ;
 int wlanIfaceDot11nSMPSMode_static ;
 int wlanIfaceRoamingMode_auto ;
 int wlanIfaceRoamingMode_device ;
 int wlanIfaceRoamingMode_manual ;

__attribute__((used)) static void
wlan_config_set_snmp_intval(struct wlan_iface *wif, int op, int val)
{
 switch (op) {
 case 162:
  if (val == 0)
   wif->packet_burst = TruthValue_false;
  else
   wif->packet_burst = TruthValue_true;
  break;
 case 161:
  if (val == 0)
   wif->dyn_frequency = TruthValue_false;
  else
   wif->dyn_frequency = TruthValue_true;
  break;
 case 156:
  if (val == 0)
   wif->fast_frames = TruthValue_false;
  else
   wif->fast_frames = TruthValue_true;
  break;
 case 136:
  if (val == 0)
   wif->dturbo = TruthValue_false;
  else
   wif->dturbo = TruthValue_true;
  break;
 case 135:
  wif->tx_power = val / 2;
  break;
 case 155:
  wif->frag_threshold = val;
  break;
 case 143:
  wif->rts_threshold = val;
  break;
 case 134:
  if (val == 0)
   wif->priv_subscribe = TruthValue_false;
  else
   wif->priv_subscribe = TruthValue_true;
  break;
 case 166:
  if (val == 0)
   wif->bg_scan = TruthValue_false;
  else
   wif->bg_scan = TruthValue_true;
  break;
 case 165:
  wif->bg_scan_idle = val;
  break;
 case 164:
  wif->bg_scan_interval = val;
  break;
 case 163:
  wif->beacons_missed = val;
  break;
 case 144:
  switch (val) {
  case 129:
   wif->roam_mode = wlanIfaceRoamingMode_device;
   break;
  case 128:
   wif->roam_mode = wlanIfaceRoamingMode_manual;
   break;
  case 130:

  default:
   wif->roam_mode = wlanIfaceRoamingMode_auto;
   break;
  }
  break;
 case 160:
  if (val == 0)
   wif->dot11d = TruthValue_false;
  else
   wif->dot11d = TruthValue_true;
  break;
 case 159:
  if (val == 0)
   wif->dot11h = TruthValue_false;
  else
   wif->dot11h = TruthValue_true;
  break;
 case 157:
  if (val == 0)
   wif->dynamic_wds = TruthValue_false;
  else
   wif->dynamic_wds = TruthValue_true;
  break;
 case 149:
  if (val == 0)
   wif->power_save = TruthValue_false;
  else
   wif->power_save = TruthValue_true;
  break;
 case 168:
  if (val == 0)
   wif->ap_bridge = TruthValue_false;
  else
   wif->ap_bridge = TruthValue_true;
  break;
 case 167:
  wif->beacon_interval = val;
  break;
 case 158:
  wif->dtim_period = val;
  break;
 case 154:
  if (val == 0)
   wif->hide_ssid = TruthValue_false;
  else
   wif->hide_ssid = TruthValue_true;
  break;
 case 150:
  if (val == 0)
   wif->inact_process = TruthValue_false;
  else
   wif->inact_process = TruthValue_true;
  break;
 case 148:
  switch (val) {
  case 133:
   wif->do11g_protect = wlanIfaceDot11gProtMode_cts;
   break;
  case 131:
   wif->do11g_protect = wlanIfaceDot11gProtMode_rtscts;
   break;
  case 132:

  default:
   wif->do11g_protect = wlanIfaceDot11gProtMode_off;
   break;
  }
  break;
 case 147:
  if (val == 0)
   wif->dot11g_pure = TruthValue_false;
  else
   wif->dot11g_pure = TruthValue_true;
  break;
 case 146:
  if (val == 0)
   wif->dot11n_pure = TruthValue_false;
  else
   wif->dot11n_pure = TruthValue_true;
  break;
 case 173:
  switch (val) {
  case 0:
   wif->ampdu = WlanIfaceDot11nPduType_disabled;
   break;
  case 1:
   wif->ampdu = WlanIfaceDot11nPduType_txOnly;
   break;
  case 2:
   wif->ampdu = WlanIfaceDot11nPduType_rxOnly;
   break;
  case 3:

  default:
   wif->ampdu = WlanIfaceDot11nPduType_txAndRx;
   break;
  }
  break;
 case 172:
  switch (val) {
  case 184:
   wif->ampdu_density = 25;
   break;
  case 183:
   wif->ampdu_density = 50;
   break;
  case 182:
   wif->ampdu_density = 100;
   break;
  case 180:
   wif->ampdu_density = 200;
   break;
  case 179:
   wif->ampdu_density = 400;
   break;
  case 178:
   wif->ampdu_density = 800;
   break;
  case 181:
   wif->ampdu_density = 1600;
   break;
  case 177:
  default:
   wif->ampdu_density = 0;
   break;
  }
  break;
 case 171:
  switch (val) {
  case 185:
   wif->ampdu_limit = 8192;
   break;
  case 188:
   wif->ampdu_limit = 16384;
   break;
  case 187:
   wif->ampdu_limit = 32768;
   break;
  case 186:
  default:
   wif->ampdu_limit = 65536;
   break;
  }
  break;
 case 170:
  switch (val) {
  case 0:
   wif->amsdu = WlanIfaceDot11nPduType_disabled;
   break;
  case 1:
   wif->amsdu = WlanIfaceDot11nPduType_txOnly;
   break;
  case 3:
   wif->amsdu = WlanIfaceDot11nPduType_txAndRx;
   break;
  case 2:
  default:

   wif->amsdu = WlanIfaceDot11nPduType_rxOnly;
   break;
  }
  break;
 case 169:
  wif->amsdu_limit = val;
  break;
 case 152:
  if (val == 0)
   wif->ht_enabled = TruthValue_false;
  else
   wif->ht_enabled = TruthValue_true;
  break;
 case 153:
  if (val == 0)
   wif->ht_compatible = TruthValue_false;
  else
   wif->ht_compatible = TruthValue_true;
  break;
 case 151:
  if (val == 131)
   wif->ht_prot_mode = wlanIfaceDot11nHTProtMode_rts;
  else
   wif->ht_prot_mode = wlanIfaceDot11nHTProtMode_off;
  break;
 case 145:
  if (val == 0)
   wif->rifs = TruthValue_false;
  else
   wif->rifs = TruthValue_true;
  break;
 case 142:
  if (val == 0)
   wif->short_gi = TruthValue_false;
  else
   wif->short_gi = TruthValue_true;
  break;
 case 141:
  switch (val) {
  case 176:
   wif->smps_mode = wlanIfaceDot11nSMPSMode_dynamic;
   break;
  case 175:
   wif->smps_mode = wlanIfaceDot11nSMPSMode_static;
   break;
  case 174:

  default:
   wif->smps_mode = wlanIfaceDot11nSMPSMode_disabled;
   break;
  }
  break;
 case 139:
  wif->tdma_slot = val;
  break;
 case 138:
  wif->tdma_slot_count = val;
  break;
 case 137:
  wif->tdma_slot_length = val;
  break;
 case 140:
  wif->tdma_binterval = val;
  break;
 default:
  break;
 }
}
