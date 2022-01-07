
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct params {int mac; int rx; } ;
struct ieee80211_frame {int* i_fc; int i_addr2; } ;
typedef int buf ;




 int IEEE80211_FC0_TYPE_MASK ;

 int abort () ;
 int ack (struct params*,struct ieee80211_frame*) ;
 scalar_t__ duplicate (struct params*,struct ieee80211_frame*,int) ;
 int err (int,char*) ;
 struct ieee80211_frame* get_wifi (char*,int*) ;
 scalar_t__ memcmp (int ,int ,int) ;
 int printf (char*) ;
 int read_ctl (struct params*,struct ieee80211_frame*,int) ;
 int read_data (struct params*,struct ieee80211_frame*,int) ;
 int read_mgt (struct params*,struct ieee80211_frame*,int) ;
 int sniff (int ,char*,int) ;

void read_wifi(struct params *p)
{
 char buf[4096];
 int rc;
 struct ieee80211_frame *wh;

 rc = sniff(p->rx, buf, sizeof(buf));
 if (rc == -1)
  err(1, "sniff()");

 wh = get_wifi(buf, &rc);
 if (!wh)
  return;


 if (memcmp(wh->i_addr2, p->mac, 6) == 0) {

  if ((wh->i_fc[0] & IEEE80211_FC0_TYPE_MASK) !=
      130)
   return;
 }


 ack(p, wh);


 if (duplicate(p, wh, rc)) {



  return;
 }

 switch (wh->i_fc[0] & IEEE80211_FC0_TYPE_MASK) {
 case 128:
  read_mgt(p, wh, rc);
  break;

 case 130:
  read_ctl(p, wh, rc);
  break;

 case 129:
  read_data(p, wh, rc);
  break;

 default:
  printf("wtf\n");
  abort();
  break;
 }
}
