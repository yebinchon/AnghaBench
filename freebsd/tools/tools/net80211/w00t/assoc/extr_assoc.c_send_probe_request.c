
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct params {int ssid; } ;
struct ieee80211_frame {int* i_fc; char* i_addr1; char* i_addr3; } ;
typedef int buf ;


 int IEEE80211_FC0_SUBTYPE_PROBE_REQ ;
 int IEEE80211_FC0_TYPE_MGT ;
 int fill_basic (struct ieee80211_frame*,struct params*) ;
 int memset (char*,int,int) ;
 int send_frame (struct params*,char*,int) ;
 int strcpy (char*,int ) ;
 int strlen (int ) ;

void send_probe_request(struct params *p)
{
 char buf[2048];
 struct ieee80211_frame *wh;
 char *data;
 int len;

 memset(buf, 0, sizeof(buf));

 wh = (struct ieee80211_frame*) buf;
 fill_basic(wh, p);
 wh->i_fc[0] |= IEEE80211_FC0_TYPE_MGT | IEEE80211_FC0_SUBTYPE_PROBE_REQ;

 memset(wh->i_addr1, 0xFF, 6);
 memset(wh->i_addr3, 0xFF, 6);

 data = (char*) (wh + 1);
 *data++ = 0;
 *data++ = strlen(p->ssid);
 strcpy(data, p->ssid);
 data += strlen(p->ssid);

 *data++ = 1;
 *data++ = 4;
 *data++ = 2 | 0x80;
 *data++ = 4 | 0x80;
 *data++ = 11;
 *data++ = 22;

 len = data - (char*)wh;

 send_frame(p, buf, len);
}
