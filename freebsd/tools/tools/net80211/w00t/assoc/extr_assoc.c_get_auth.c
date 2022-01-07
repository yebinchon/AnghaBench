
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct params {int ap; int mac; int rx; } ;
struct ieee80211_frame {int dummy; } ;
typedef int buf ;


 int IEEE80211_FC0_SUBTYPE_AUTH ;
 int IEEE80211_FC0_TYPE_MGT ;
 int err (int,char*) ;
 int for_me (struct ieee80211_frame*,int ) ;
 int frame_type (struct ieee80211_frame*,int ,int ) ;
 int from_ap (struct ieee80211_frame*,int ) ;
 int generic_process (struct ieee80211_frame*,struct params*,int) ;
 struct ieee80211_frame* get_wifi (char*,int*) ;
 int le16toh (short) ;
 int printf (char*,...) ;
 int sniff (int ,char*,int) ;

int get_auth(struct params *p)
{
 char buf[4096];
 int rc;
 struct ieee80211_frame *wh;
 short *data;

 rc = sniff(p->rx, buf, sizeof(buf));
 if (rc == -1)
  err(1, "sniff()");

 wh = get_wifi(buf, &rc);
 if (!wh)
  return 0;

 generic_process(wh, p, rc);

 if (!for_me(wh, p->mac))
  return 0;

 if (!from_ap(wh, p->ap))
  return 0;

 if (!frame_type(wh, IEEE80211_FC0_TYPE_MGT,
   IEEE80211_FC0_SUBTYPE_AUTH))
  return 0;

 data = (short*) (wh+1);


 if (le16toh(*data) != 0) {
  printf("Not open-system %d!\n", le16toh(*data));
  return 0;
 }
 data++;


 if (le16toh(*data) != 2) {
  printf("Got transaction %d!\n", le16toh(*data));
  return 0;
 }
 data++;


 rc = le16toh(*data);
 if (rc == 0) {
  printf("Authenticated\n");
  return 1;
 }

 printf("Authentication failed code=%d\n", rc);
 return 0;
}
