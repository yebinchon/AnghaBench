
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct params {scalar_t__ state; int mac; int rx; } ;
struct ieee80211_frame {int i_addr1; } ;


 int IEEE80211_FC0_SUBTYPE_ACK ;
 int IEEE80211_FC0_SUBTYPE_DATA ;
 int IEEE80211_FC0_TYPE_CTL ;
 int IEEE80211_FC0_TYPE_DATA ;
 scalar_t__ S_START ;
 int enque (struct params*,char**,struct ieee80211_frame*,int) ;
 int err (int,char*) ;
 scalar_t__ frame_type (struct ieee80211_frame*,int ,int ) ;
 struct ieee80211_frame* get_wifi (char*,int*) ;
 int got_ack (struct params*) ;
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


 if (frame_type(wh, IEEE80211_FC0_TYPE_CTL, IEEE80211_FC0_SUBTYPE_ACK) &&
     (memcmp(p->mac, wh->i_addr1, 6) == 0)) {
  got_ack(p);
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
