
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct params {scalar_t__ state; int mac; int mcast; int ap; int rx; } ;
struct ieee80211_frame {int* i_fc; int i_addr3; int i_addr1; int i_addr2; } ;


 int IEEE80211_FC0_SUBTYPE_DATA ;
 int IEEE80211_FC0_TYPE_DATA ;
 int IEEE80211_FC1_DIR_FROMDS ;
 scalar_t__ S_START ;
 int enque (struct params*,char**,struct ieee80211_frame*,int) ;
 int err (int,char*) ;
 scalar_t__ frame_type (struct ieee80211_frame*,int ,int ) ;
 struct ieee80211_frame* get_wifi (char*,int*) ;
 int got_mcast (struct params*,struct ieee80211_frame*,int) ;
 scalar_t__ malloc (int) ;
 scalar_t__ memcmp (int ,int ,int) ;
 int send_queue (struct params*) ;
 int sniff (int ,char*,int) ;
 int wanted (struct params*,struct ieee80211_frame*,int) ;

void read_wifi(struct params *p)
{
 static char *buf = 0;
 static int buflen = 4096;
 struct ieee80211_frame *wh;
 int rc;

 if (!buf) {
  buf = (char*) malloc(buflen);
  if (!buf)
   err(1, "malloc()");
 }

 rc = sniff(p->rx, buf, buflen);
 if (rc == -1)
  err(1, "sniff()");

 wh = get_wifi(buf, &rc);
 if (!wh)
  return;


 if (frame_type(wh, IEEE80211_FC0_TYPE_DATA,
         IEEE80211_FC0_SUBTYPE_DATA) &&
     (wh->i_fc[1] & IEEE80211_FC1_DIR_FROMDS) &&
     (memcmp(wh->i_addr2, p->ap, 6) == 0) &&
     (memcmp(wh->i_addr1, p->mcast, 5) == 0) &&
     (memcmp(p->mac, wh->i_addr3, 6) == 0)) {
  got_mcast(p, wh, rc);
  return;
 }


 if (frame_type(wh, IEEE80211_FC0_TYPE_DATA,
         IEEE80211_FC0_SUBTYPE_DATA)) {
  if (!wanted(p, wh, rc))
   return;

  enque(p, &buf, wh, rc);
  if (p->state == S_START)
   send_queue(p);
  return;
 }
}
