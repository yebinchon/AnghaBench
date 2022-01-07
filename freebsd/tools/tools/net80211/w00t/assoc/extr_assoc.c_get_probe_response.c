
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct params {int bssid; int ap; int ssid; int mac; int rx; } ;
struct ieee80211_frame {int i_addr3; int i_addr2; } ;
typedef int buf ;


 char IEEE80211_CAPINFO_PRIVACY ;
 int IEEE80211_FC0_SUBTYPE_PROBE_RESP ;
 int IEEE80211_FC0_TYPE_MGT ;
 int err (int,char*) ;
 int for_me (struct ieee80211_frame*,int ) ;
 int frame_type (struct ieee80211_frame*,int ,int ) ;
 int generic_process (struct ieee80211_frame*,struct params*,int) ;
 struct ieee80211_frame* get_wifi (char*,int*) ;
 int mac2str (char*,int ) ;
 int memcpy (int ,int ,int) ;
 int printf (char*,...) ;
 int sniff (int ,char*,int) ;
 scalar_t__ strcmp (char*,int ) ;

int get_probe_response(struct params *p)
{
 char buf[4096];
 int rc;
 struct ieee80211_frame *wh;
 char *data;
 int ess;
 int wep;
 char *ssid;
 char from[18];
 char bssid[18];

 rc = sniff(p->rx, buf, sizeof(buf));
 if (rc == -1)
  err(1, "sniff()");

 wh = get_wifi(buf, &rc);
 if (!wh)
  return 0;

 generic_process(wh, p, rc);

 if (!for_me(wh, p->mac))
  return 0;

 if (!frame_type(wh, IEEE80211_FC0_TYPE_MGT,
   IEEE80211_FC0_SUBTYPE_PROBE_RESP))
  return 0;

 data = (char*) (wh+1);
 data += 8;
 data += 2;
 ess = *data & 1;
 wep = (*data & IEEE80211_CAPINFO_PRIVACY) ? 1 : 0;
 data += 2;


 if (*data != 0) {
  printf("Warning, expecting SSID got %x\n", *data);
  return 0;
 }
 data++;
 ssid = data+1;
 data += 1 + *data;
 if (*data != 1) {
  printf("Warning, expected rates got %x\n", *data);
  return 0;
 }
 *data = 0;


 data++;

 mac2str(from, wh->i_addr2);
 mac2str(bssid, wh->i_addr3);
 printf("Got response from %s [%s] [%s] ESS=%d WEP=%d\n",
        from, bssid, ssid, ess, wep);

 if (strcmp(ssid, p->ssid) != 0)
  return 0;

 memcpy(p->ap, wh->i_addr2, 6);
 memcpy(p->bssid, wh->i_addr3, 6);
 return 1;
}
