
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct params {int seq_rx; int state; int ap; int mac; int rx; } ;
struct ieee80211_frame {int* i_fc; } ;
typedef int buf ;



 int IEEE80211_FC0_SUBTYPE_DEAUTH ;
 int IEEE80211_FC0_SUBTYPE_DISASSOC ;
 int IEEE80211_FC0_SUBTYPE_MASK ;

 int IEEE80211_FC0_SUBTYPE_SHIFT ;
 int IEEE80211_FC0_TYPE_CTL ;
 int IEEE80211_FC0_TYPE_MASK ;
 int IEEE80211_FC0_TYPE_MGT ;
 int S_ASSOCIATED ;
 int S_START ;
 int S_WAIT_ACK ;
 int abort () ;
 int err (int,char*) ;
 int for_me (struct ieee80211_frame*,int ) ;
 int from_ap (struct ieee80211_frame*,int ) ;
 int generic_process (struct ieee80211_frame*,struct params*,int) ;
 struct ieee80211_frame* get_wifi (char*,int*) ;
 int printf (char*,...) ;
 int sniff (int ,char*,int) ;

void read_wifi(struct params *p)
{
 char buf[4096];
 int rc;
 struct ieee80211_frame *wh;
 int type, stype;

 rc = sniff(p->rx, buf, sizeof(buf));
 if (rc == -1)
  err(1, "sniff()");

 wh = get_wifi(buf, &rc);
 if (!wh)
  return;

 generic_process(wh, p, rc);

 if (!for_me(wh, p->mac))
  return;

 type = wh->i_fc[0] & IEEE80211_FC0_TYPE_MASK;
 stype = wh->i_fc[0] & IEEE80211_FC0_SUBTYPE_MASK;


 if (type == IEEE80211_FC0_TYPE_CTL) {
  switch (stype) {
  case 129:
   if (p->state == S_WAIT_ACK)
    p->state = S_ASSOCIATED;
   break;

  case 128:



   break;

  default:
   printf("Unknown CTL frame %d\n",
          stype >> IEEE80211_FC0_SUBTYPE_SHIFT);
   abort();
   break;
  }
  return;
 }

 if (!from_ap(wh, p->ap))
  return;

 if (type != IEEE80211_FC0_TYPE_MGT)
  return;

 if (stype == IEEE80211_FC0_SUBTYPE_DEAUTH ||
     stype == IEEE80211_FC0_SUBTYPE_DISASSOC) {
  printf("Got management! %d\n",
         stype >> IEEE80211_FC0_SUBTYPE_SHIFT);
  p->seq_rx = -1;
  p->state = S_START;
 }

 return;
}
