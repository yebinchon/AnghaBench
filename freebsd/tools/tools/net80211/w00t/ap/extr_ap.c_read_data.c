
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct params {int dummy; } ;
struct ieee80211_frame {int* i_fc; } ;



 int IEEE80211_FC0_SUBTYPE_MASK ;

 int IEEE80211_FC0_SUBTYPE_SHIFT ;
 int abort () ;
 int printf (char*,int) ;
 int read_real_data (struct params*,struct ieee80211_frame*,int) ;

void read_data(struct params *p, struct ieee80211_frame *wh, int len)
{
 switch (wh->i_fc[0] & IEEE80211_FC0_SUBTYPE_MASK) {
 case 129:
  read_real_data(p, wh, len);
  break;

 case 128:
  break;

 default:
  printf("wtf %d\n", (wh->i_fc[0] & IEEE80211_FC0_SUBTYPE_MASK) >>
       IEEE80211_FC0_SUBTYPE_SHIFT);
  abort();
  break;
 }
}
