
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IEEE80211_BINTVAL_MAX ;
 int IEEE80211_BINTVAL_MIN ;
 int IEEE80211_DTIM_MAX ;
 int IEEE80211_DTIM_MIN ;
 int IEEE80211_FRAG_MAX ;
 int IEEE80211_FRAG_MIN ;
 int IEEE80211_HTCAP_MAXAMSDU_3839 ;
 int IEEE80211_HTCAP_MAXAMSDU_7935 ;
 int IEEE80211_HTCAP_MAXRXAMPDU_16K ;
 int IEEE80211_HTCAP_MAXRXAMPDU_32K ;
 int IEEE80211_HTCAP_MAXRXAMPDU_64K ;
 int IEEE80211_HTCAP_MAXRXAMPDU_8K ;
 int IEEE80211_HTCAP_MPDUDENSITY_025 ;
 int IEEE80211_HTCAP_MPDUDENSITY_05 ;
 int IEEE80211_HTCAP_MPDUDENSITY_1 ;
 int IEEE80211_HTCAP_MPDUDENSITY_16 ;
 int IEEE80211_HTCAP_MPDUDENSITY_2 ;
 int IEEE80211_HTCAP_MPDUDENSITY_4 ;
 int IEEE80211_HTCAP_MPDUDENSITY_8 ;
 int IEEE80211_HTCAP_MPDUDENSITY_NA ;
 int IEEE80211_HTCAP_SHORTGI20 ;
 int IEEE80211_HTCAP_SHORTGI40 ;
 int IEEE80211_HTCAP_SMPS_DYNAMIC ;
 int IEEE80211_HTCAP_SMPS_ENA ;
 int IEEE80211_HTCAP_SMPS_OFF ;
 int IEEE80211_HWBMISS_MAX ;
 int IEEE80211_HWBMISS_MIN ;
 int IEEE80211_PROTMODE_CTS ;
 int IEEE80211_PROTMODE_OFF ;
 int IEEE80211_PROTMODE_RTSCTS ;
 int IEEE80211_ROAMING_AUTO ;
 int IEEE80211_ROAMING_DEVICE ;
 int IEEE80211_ROAMING_MANUAL ;
 int IEEE80211_RTS_MAX ;
 int IEEE80211_RTS_MIN ;
 int SNMP_ERR_INCONS_VALUE ;
 int SNMP_ERR_NOERROR ;
 int TruthValue_false ;
 int TruthValue_true ;
 int WLAN_BGSCAN_IDLE_MIN ;
 int WLAN_SCAN_VALID_MIN ;
 int WLAN_TDMA_MAXSLOTS ;
__attribute__((used)) static int
wlan_config_snmp2value(int which, int sval, int *value)
{
 *value = 0;

 switch (which) {
 case 174:
 case 172:
 case 167:
 case 145:
 case 143:
 case 179:
 case 171:
 case 170:
 case 168:
 case 160:
 case 181:
 case 165:
 case 161:
 case 158:
 case 157:
 case 163:
 case 164:
 case 155:
  if (sval == TruthValue_true)
   *value = 1;
  else if (sval != TruthValue_false)
   return (SNMP_ERR_INCONS_VALUE);
  break;
 case 156:
  break;
 case 150:
  break;
 case 173:
  break;
 case 144:
  *value = sval * 2;
  break;
 case 166:
  if (sval < IEEE80211_FRAG_MIN || sval > IEEE80211_FRAG_MAX)
   return (SNMP_ERR_INCONS_VALUE);
  *value = sval;
  break;
 case 153:
  if (sval < IEEE80211_RTS_MIN || sval > IEEE80211_RTS_MAX)
   return (SNMP_ERR_INCONS_VALUE);
  *value = sval;
  break;
 case 178:
  if (sval < WLAN_BGSCAN_IDLE_MIN)
   return (SNMP_ERR_INCONS_VALUE);
  *value = sval;
  break;
 case 177:
  if (sval < WLAN_SCAN_VALID_MIN)
   return (SNMP_ERR_INCONS_VALUE);
  *value = sval;
  break;
 case 176:
  if (sval < IEEE80211_HWBMISS_MIN || sval > IEEE80211_HWBMISS_MAX)
   return (SNMP_ERR_INCONS_VALUE);
  *value = sval;
  break;
 case 175:
  break;
 case 154:
  switch (sval) {
  case 129:
   *value = IEEE80211_ROAMING_DEVICE;
   break;
  case 128:
   *value = IEEE80211_ROAMING_MANUAL;
   break;
  case 130:
   *value = IEEE80211_ROAMING_AUTO;
   break;
  default:
   return (SNMP_ERR_INCONS_VALUE);
  }
  break;
 case 180:
  if (sval < IEEE80211_BINTVAL_MIN || sval > IEEE80211_BINTVAL_MAX)
   return (SNMP_ERR_INCONS_VALUE);
  *value = sval;
  break;
 case 169:
  if (sval < IEEE80211_DTIM_MIN || sval > IEEE80211_DTIM_MAX)
   return (SNMP_ERR_INCONS_VALUE);
  *value = sval;
  break;
 case 159:
  switch (sval) {
  case 138:
   *value = IEEE80211_PROTMODE_CTS;
   break;
  case 136:
   *value = IEEE80211_PROTMODE_RTSCTS;
   break;
  case 137:
   *value = IEEE80211_PROTMODE_OFF;
   break;
  default:
   return (SNMP_ERR_INCONS_VALUE);
  }
  break;
 case 186:
  switch (sval) {
  case 142:
   break;
  case 139:
   *value = 1;
   break;
  case 141:
   *value = 2;
   break;
  case 140:
   *value = 3;
   break;
  default:
   return (SNMP_ERR_INCONS_VALUE);
  }
  break;
 case 185:
  switch (sval) {
  case 0:
   *value = IEEE80211_HTCAP_MPDUDENSITY_NA;
   break;
  case 25:
   *value = IEEE80211_HTCAP_MPDUDENSITY_025;
   break;
  case 50:
   *value = IEEE80211_HTCAP_MPDUDENSITY_05;
   break;
  case 100:
   *value = IEEE80211_HTCAP_MPDUDENSITY_1;
   break;
  case 200:
   *value = IEEE80211_HTCAP_MPDUDENSITY_2;
   break;
  case 400:
   *value = IEEE80211_HTCAP_MPDUDENSITY_4;
   break;
  case 800:
   *value = IEEE80211_HTCAP_MPDUDENSITY_8;
   break;
  case 1600:
   *value = IEEE80211_HTCAP_MPDUDENSITY_16;
   break;
  default:
   return (SNMP_ERR_INCONS_VALUE);
  }
  break;
 case 184:
  switch (sval) {
  case 8192:
   *value = IEEE80211_HTCAP_MAXRXAMPDU_8K;
   break;
  case 16384:
   *value = IEEE80211_HTCAP_MAXRXAMPDU_16K;
   break;
  case 32768:
   *value = IEEE80211_HTCAP_MAXRXAMPDU_32K;
   break;
  case 65536:
   *value = IEEE80211_HTCAP_MAXRXAMPDU_64K;
   break;
  default:
   return (SNMP_ERR_INCONS_VALUE);
  }
  break;
 case 183:
  switch (sval) {
  case 142:
   break;
  case 139:
   *value = 1;
   break;
  case 141:
   *value = 2;
   break;
  case 140:
   *value = 3;
   break;
  default:
   return (SNMP_ERR_INCONS_VALUE);
  }
  break;
 case 182:
  if (sval == 3839 || sval == 0)
   *value = IEEE80211_HTCAP_MAXAMSDU_3839;
  else if (sval == 7935)
   *value = IEEE80211_HTCAP_MAXAMSDU_7935;
  else
   return (SNMP_ERR_INCONS_VALUE);
  break;
 case 162:
  switch (sval) {
  case 134:
   *value = IEEE80211_PROTMODE_RTSCTS;
   break;
  case 135:
   break;
  default:
   return (SNMP_ERR_INCONS_VALUE);
  }
  break;
 case 152:
  if (sval == TruthValue_true)
   *value = IEEE80211_HTCAP_SHORTGI20 |
       IEEE80211_HTCAP_SHORTGI40;
  else if (sval != TruthValue_false)
   return (SNMP_ERR_INCONS_VALUE);
  break;
 case 151:
  switch (sval) {
  case 133:
   *value = IEEE80211_HTCAP_SMPS_OFF;
   break;
  case 131:
   *value = IEEE80211_HTCAP_SMPS_ENA;
   break;
  case 132:
   *value = IEEE80211_HTCAP_SMPS_DYNAMIC;
   break;
  default:
   return (SNMP_ERR_INCONS_VALUE);
  }
  break;
 case 148:
  if (sval < 0 || sval > WLAN_TDMA_MAXSLOTS)
   return (SNMP_ERR_INCONS_VALUE);
  *value = sval;
  break;
 case 147:
  if (sval < 0 || sval > WLAN_TDMA_MAXSLOTS)
   return (SNMP_ERR_INCONS_VALUE);
  *value = sval;
  break;
 case 146:
  if (sval < 2*100 || sval > 0xfffff)
   return (SNMP_ERR_INCONS_VALUE);
  *value = sval;
  break;
 case 149:
  if (sval < 1)
   return (SNMP_ERR_INCONS_VALUE);
  *value = sval;
  break;
 default:
  return (SNMP_ERR_INCONS_VALUE);
 }

 return (SNMP_ERR_NOERROR);
}
