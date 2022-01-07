
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_frame {int* i_fc; } ;
typedef int buf ;


 int IEEE80211_FC0_SUBTYPE_AUTH ;
 int IEEE80211_FC0_TYPE_MGT ;
 int fill_basic (struct ieee80211_frame*) ;
 int memset (unsigned char*,int ,int) ;
 int send_frame (int,unsigned char*,int) ;

void send_auth(int tx) {
 unsigned char buf[128];
 struct ieee80211_frame* wh = (struct ieee80211_frame*) buf;
 unsigned short* n;

 memset(buf, 0, sizeof(buf));
 fill_basic(wh);
 wh->i_fc[0] |= IEEE80211_FC0_TYPE_MGT | IEEE80211_FC0_SUBTYPE_AUTH;

 n = (unsigned short*) ((unsigned char*) wh + sizeof(*wh));
 n++;
 *n = 1;

 send_frame(tx, buf, sizeof(*wh) + 2 + 2 + 2);
}
