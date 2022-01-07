
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct params {char* mac; } ;
struct ieee80211_frame {int * i_fc; int i_addr3; int i_addr1; } ;
typedef int buf ;


 int IEEE80211_FC0_SUBTYPE_PROBE_RESP ;
 int IEEE80211_FC0_TYPE_MGT ;
 int fill_basic (struct ieee80211_frame*,struct params*) ;
 int fill_beacon (struct params*,struct ieee80211_frame*) ;
 int memcpy (int ,char*,int) ;
 int memset (char*,int ,int) ;
 int printf (char*) ;
 int send_frame (struct params*,struct ieee80211_frame*,int) ;

void send_pres(struct params *p, char *mac)
{
 char buf[4096];
 struct ieee80211_frame *wh;
 int len;

 wh = (struct ieee80211_frame*) buf;

 memset(buf, 0, sizeof(buf));
 fill_basic(wh, p);
 memcpy(wh->i_addr1, mac, 6);
 memcpy(wh->i_addr3, p->mac, 6);

 wh->i_fc[0] |= IEEE80211_FC0_TYPE_MGT;
 wh->i_fc[0] |= IEEE80211_FC0_SUBTYPE_PROBE_RESP;

 len = fill_beacon(p, wh);

 printf("sending probe response\n");
 send_frame(p, wh, len);
}
