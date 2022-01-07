
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IEEE80211_IOC_AMPDU ;
 int IEEE80211_IOC_AMPDU_DENSITY ;
 int IEEE80211_IOC_AMPDU_LIMIT ;
 int IEEE80211_IOC_AMSDU ;
 int IEEE80211_IOC_AMSDU_LIMIT ;
 int IEEE80211_IOC_APBRIDGE ;
 int IEEE80211_IOC_BEACON_INTERVAL ;
 int IEEE80211_IOC_BGSCAN ;
 int IEEE80211_IOC_BGSCAN_IDLE ;
 int IEEE80211_IOC_BGSCAN_INTERVAL ;
 int IEEE80211_IOC_BMISSTHRESHOLD ;
 int IEEE80211_IOC_BSSID ;
 int IEEE80211_IOC_BURST ;
 int IEEE80211_IOC_CURCHAN ;
 int IEEE80211_IOC_DFS ;
 int IEEE80211_IOC_DOTD ;
 int IEEE80211_IOC_DOTH ;
 int IEEE80211_IOC_DTIM_PERIOD ;
 int IEEE80211_IOC_DWDS ;
 int IEEE80211_IOC_FF ;
 int IEEE80211_IOC_FRAGTHRESHOLD ;
 int IEEE80211_IOC_HIDESSID ;
 int IEEE80211_IOC_HTCOMPAT ;
 int IEEE80211_IOC_HTCONF ;
 int IEEE80211_IOC_HTPROTMODE ;
 int IEEE80211_IOC_INACTIVITY ;
 int IEEE80211_IOC_POWERSAVE ;
 int IEEE80211_IOC_PROTMODE ;
 int IEEE80211_IOC_PUREG ;
 int IEEE80211_IOC_PUREN ;
 int IEEE80211_IOC_REGDOMAIN ;
 int IEEE80211_IOC_RIFS ;
 int IEEE80211_IOC_ROAMING ;
 int IEEE80211_IOC_RTSTHRESHOLD ;
 int IEEE80211_IOC_SHORTGI ;
 int IEEE80211_IOC_SMPS ;
 int IEEE80211_IOC_SSID ;
 int IEEE80211_IOC_TDMA_BINTERVAL ;
 int IEEE80211_IOC_TDMA_SLOT ;
 int IEEE80211_IOC_TDMA_SLOTCNT ;
 int IEEE80211_IOC_TDMA_SLOTLEN ;
 int IEEE80211_IOC_TURBOP ;
 int IEEE80211_IOC_TXPOWER ;
 int IEEE80211_IOC_WPS ;
__attribute__((used)) static int
wlan_config_snmp2ioctl(int which)
{
 int op;

 switch (which) {
 case 138:
  op = IEEE80211_IOC_BURST;
  break;
 case 166:
  op = IEEE80211_IOC_REGDOMAIN;
  break;
 case 135:
  op = IEEE80211_IOC_REGDOMAIN;
  break;
 case 163:
  op = IEEE80211_IOC_SSID;
  break;
 case 164:
  op = IEEE80211_IOC_CURCHAN;
  break;
 case 144:
  op = IEEE80211_IOC_DFS;
  break;
 case 142:
  op = IEEE80211_IOC_FF;
  break;
 case 145:
  op = IEEE80211_IOC_TURBOP;
  break;
 case 129:
  op = IEEE80211_IOC_TXPOWER;
  break;
 case 141:
  op = IEEE80211_IOC_FRAGTHRESHOLD;
  break;
 case 136:
  op = IEEE80211_IOC_RTSTHRESHOLD;
  break;
 case 128:
  op = IEEE80211_IOC_WPS;
  break;
 case 169:
  op = IEEE80211_IOC_BGSCAN;
  break;
 case 168:
  op = IEEE80211_IOC_BGSCAN_IDLE;
  break;
 case 167:
  op = IEEE80211_IOC_BGSCAN_INTERVAL;
  break;
 case 170:
  op = IEEE80211_IOC_BMISSTHRESHOLD;
  break;
 case 165:
  op = IEEE80211_IOC_BSSID;
  break;
 case 134:
  op = IEEE80211_IOC_ROAMING;
  break;
 case 162:
  op = IEEE80211_IOC_DOTD;
  break;
 case 159:
  op = IEEE80211_IOC_DOTH;
  break;
 case 143:
  op = IEEE80211_IOC_DWDS;
  break;
 case 137:
  op = IEEE80211_IOC_POWERSAVE;
  break;
 case 172:
  op = IEEE80211_IOC_APBRIDGE;
  break;
 case 171:
  op = IEEE80211_IOC_BEACON_INTERVAL;
  break;
 case 146:
  op = IEEE80211_IOC_DTIM_PERIOD;
  break;
 case 140:
  op = IEEE80211_IOC_HIDESSID;
  break;
 case 139:
  op = IEEE80211_IOC_INACTIVITY;
  break;
 case 161:
  op = IEEE80211_IOC_PROTMODE;
  break;
 case 160:
  op = IEEE80211_IOC_PUREG;
  break;
 case 150:
  op = IEEE80211_IOC_PUREN;
  break;
 case 158:
  op = IEEE80211_IOC_AMPDU;
  break;
 case 157:
  op = IEEE80211_IOC_AMPDU_DENSITY;
  break;
 case 156:
  op = IEEE80211_IOC_AMPDU_LIMIT;
  break;
 case 155:
  op = IEEE80211_IOC_AMSDU;
  break;
 case 154:
  op = IEEE80211_IOC_AMSDU_LIMIT;
  break;
 case 151:
  op = IEEE80211_IOC_HTCONF;
  break;
 case 153:
  op = IEEE80211_IOC_HTCOMPAT;
  break;
 case 152:
  op = IEEE80211_IOC_HTPROTMODE;
  break;
 case 149:
  op = IEEE80211_IOC_RIFS;
  break;
 case 147:
  op = IEEE80211_IOC_SHORTGI;
  break;
 case 148:
  op = IEEE80211_IOC_SMPS;
  break;
 case 132:
  op = IEEE80211_IOC_TDMA_SLOT;
  break;
 case 131:
  op = IEEE80211_IOC_TDMA_SLOTCNT;
  break;
 case 130:
  op = IEEE80211_IOC_TDMA_SLOTLEN;
  break;
 case 133:
  op = IEEE80211_IOC_TDMA_BINTERVAL;
  break;
 default:
  op = -1;
 }

 return (op);
}
