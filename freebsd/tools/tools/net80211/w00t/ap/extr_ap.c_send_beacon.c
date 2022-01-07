
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct params {int blast; int mac; } ;
struct ieee80211_frame {char* i_addr1; int * i_fc; int i_addr3; } ;
typedef int buf ;


 int IEEE80211_FC0_SUBTYPE_BEACON ;
 int IEEE80211_FC0_TYPE_MGT ;
 int err (int,char*) ;
 int fill_basic (struct ieee80211_frame*,struct params*) ;
 int fill_beacon (struct params*,struct ieee80211_frame*) ;
 int gettimeofday (int *,int *) ;
 int memcpy (int ,int ,int) ;
 int memset (char*,int,int) ;
 int printf (char*) ;
 int send_frame (struct params*,struct ieee80211_frame*,int) ;

void send_beacon(struct params *p)
{
 char buf[4096];
 struct ieee80211_frame *wh;
 int len;
 char *ptr;

 wh = (struct ieee80211_frame*) buf;

 memset(buf, 0, sizeof(buf));
 fill_basic(wh, p);
 memset(wh->i_addr1, 0xff, 6);
 memcpy(wh->i_addr3, p->mac, 6);

 wh->i_fc[0] |= IEEE80211_FC0_TYPE_MGT;
 wh->i_fc[0] |= IEEE80211_FC0_SUBTYPE_BEACON;

 len = fill_beacon(p, wh);


 ptr = (char*)wh + len;
 *ptr++ = 5;
 *ptr++ = 4;
 len += 2+4;



 send_frame(p, wh, len);

 if (gettimeofday(&p->blast, ((void*)0)) == -1)
  err(1, "gettimeofday()");
}
