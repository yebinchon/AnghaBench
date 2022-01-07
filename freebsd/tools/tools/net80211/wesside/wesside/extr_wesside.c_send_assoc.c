
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_frame {int* i_fc; } ;
typedef int buf ;
struct TYPE_2__ {int ssid; } ;


 int IEEE80211_CAPINFO_PRIVACY ;
 int IEEE80211_FC0_SUBTYPE_ASSOC_REQ ;
 int IEEE80211_FC0_TYPE_MGT ;
 int fill_basic (struct ieee80211_frame*) ;
 int memcpy (unsigned char*,int ,int) ;
 int memset (unsigned char*,int ,int) ;
 int send_frame (int,unsigned char*,int) ;
 int strlen (int ) ;
 TYPE_1__ victim ;

void send_assoc(int tx) {
 unsigned char buf[128];
 struct ieee80211_frame* wh = (struct ieee80211_frame*) buf;
 unsigned char* body;
 int ssidlen;

 memset(buf, 0, sizeof(buf));
 fill_basic(wh);
 wh->i_fc[0] |= IEEE80211_FC0_TYPE_MGT | IEEE80211_FC0_SUBTYPE_ASSOC_REQ;

 body = (unsigned char*) wh + sizeof(*wh);
 *body = 1 | IEEE80211_CAPINFO_PRIVACY;

 body += 2 + 2;


 *body++ = 0;
 ssidlen = strlen(victim.ssid);
 *body++ = ssidlen;
 memcpy(body, victim.ssid, ssidlen);
 body += ssidlen;


 *body++ = 1;
 *body++ = 4;
 *body++ = 2;
 *body++ = 4;
 *body++ = 11;
 *body++ = 22;

 send_frame(tx, buf, sizeof(*wh) + 2 + 2 + 2 +
       strlen(victim.ssid) + 2 + 4);
}
