
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct params {int dummy; } ;
struct ieee80211_frame {int* i_dur; int i_addr1; int * i_fc; } ;
typedef int buf ;


 int IEEE80211_FC0_SUBTYPE_CTS ;
 int IEEE80211_FC0_TYPE_CTL ;
 int memcpy (int ,char*,int) ;
 int memset (char*,int ,int) ;
 int send_frame (struct params*,struct ieee80211_frame*,int) ;

void send_cts(struct params *p, char *mac)
{
 char buf[64];
 struct ieee80211_frame *wh;

 memset(buf, 0, sizeof(buf));
 wh = (struct ieee80211_frame*) buf;
 wh->i_fc[0] |= IEEE80211_FC0_TYPE_CTL;
 wh->i_fc[0] |= IEEE80211_FC0_SUBTYPE_CTS;
 wh->i_dur[0] = 0x69;
 wh->i_dur[1] = 0x00;
 memcpy(wh->i_addr1, mac, 6);

 send_frame(p, wh, 10);
}
