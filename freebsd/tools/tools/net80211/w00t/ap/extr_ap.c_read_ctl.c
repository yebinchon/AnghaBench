
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct params {int dummy; } ;
struct ieee80211_frame {int* i_fc; } ;




 int IEEE80211_FC0_SUBTYPE_MASK ;

 int IEEE80211_FC0_SUBTYPE_SHIFT ;
 int abort () ;
 int printf (char*,...) ;
 int read_ack (struct params*,struct ieee80211_frame*,int) ;
 int read_rts (struct params*,struct ieee80211_frame*,int) ;

void read_ctl(struct params *p, struct ieee80211_frame *wh, int len)
{
 switch (wh->i_fc[0] & IEEE80211_FC0_SUBTYPE_MASK) {
 case 128:
  read_rts(p, wh, len);
  break;

 case 130:
  read_ack(p, wh, len);
  break;

 case 129:
  break;

 default:
  printf("wtf %d\n", (wh->i_fc[0] & IEEE80211_FC0_SUBTYPE_MASK) >>
         IEEE80211_FC0_SUBTYPE_SHIFT);
  abort();
  break;
 }



}
