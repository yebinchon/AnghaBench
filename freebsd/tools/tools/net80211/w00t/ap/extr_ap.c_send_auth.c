
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct params {char* mac; } ;
struct ieee80211_frame {int * i_fc; int i_addr3; int i_addr1; } ;
typedef int buf ;


 int IEEE80211_FC0_SUBTYPE_AUTH ;
 int IEEE80211_FC0_TYPE_MGT ;
 int fill_basic (struct ieee80211_frame*,struct params*) ;
 void* htole16 (int) ;
 int memcpy (int ,char*,int) ;
 int memset (char*,int ,int) ;
 int printf (char*) ;
 int send_frame (struct params*,struct ieee80211_frame*,int) ;

void send_auth(struct params* p, char *mac)
{
 char buf[4096];
 struct ieee80211_frame *wh;
 unsigned short *ptr;
 int len;

 wh = (struct ieee80211_frame*) buf;

 memset(buf, 0, sizeof(buf));
 fill_basic(wh, p);
 memcpy(wh->i_addr1, mac, 6);
 memcpy(wh->i_addr3, p->mac, 6);

 wh->i_fc[0] |= IEEE80211_FC0_TYPE_MGT;
 wh->i_fc[0] |= IEEE80211_FC0_SUBTYPE_AUTH;

 ptr = (unsigned short*) (wh+1);
 *ptr++ = htole16(0);
 *ptr++ = htole16(2);
 *ptr++ = htole16(0);

 len = ((char*)ptr) - ((char*) wh);
 printf("sending auth\n");
 send_frame(p, wh, len);
}
