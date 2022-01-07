
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct params {int dummy; } ;
struct ieee80211_frame {int* i_fc; } ;
typedef int buf ;


 int IEEE80211_FC0_SUBTYPE_AUTH ;
 int IEEE80211_FC0_TYPE_MGT ;
 int fill_basic (struct ieee80211_frame*,struct params*) ;
 int memset (char*,int ,int) ;
 int send_frame (struct params*,char*,int) ;

void send_auth(struct params *p)
{
 char buf[2048];
 struct ieee80211_frame *wh;
 char *data;
 int len;

 memset(buf, 0, sizeof(buf));

 wh = (struct ieee80211_frame*) buf;
 fill_basic(wh, p);
 wh->i_fc[0] |= IEEE80211_FC0_TYPE_MGT | IEEE80211_FC0_SUBTYPE_AUTH;

 data = (char*) (wh + 1);


 *data++ = 0;
 *data++ = 0;


 *data++ = 1;
 *data++ = 0;


 *data++ = 0;
 *data++ = 0;

 len = data - (char*)wh;

 send_frame(p, buf, len);
}
