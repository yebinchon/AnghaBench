
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int se_rssi; int se_chan; int se_capinfo; } ;
struct sta_entry {int se_fails; TYPE_1__ base; } ;
typedef int int8_t ;


 int IEEE80211_CAPINFO_PRIVACY ;
 int IEEE80211_IS_CHAN_5GHZ (int ) ;
 int MIN (int,int ) ;
 int PREFER (int ,int ,int) ;
 int STA_RSSI_MAX ;
 int abs (int) ;
 int maxrate (TYPE_1__*) ;

__attribute__((used)) static int
sta_compare(const struct sta_entry *a, const struct sta_entry *b)
{




 int maxa, maxb;
 int8_t rssia, rssib;
 int weight;


 do { if (((a->base.se_capinfo) ^ (b->base.se_capinfo)) & (IEEE80211_CAPINFO_PRIVACY)) return ((a->base.se_capinfo) & (IEEE80211_CAPINFO_PRIVACY)) ? 1 : -1; } while (0);



 weight = b->se_fails - a->se_fails;
 if (abs(weight) > 1)
  return weight;
 rssia = MIN(a->base.se_rssi, STA_RSSI_MAX);
 rssib = MIN(b->base.se_rssi, STA_RSSI_MAX);
 if (abs(rssib - rssia) < 5) {

  maxa = maxrate(&a->base);
  maxb = maxrate(&b->base);
  if (maxa != maxb)
   return maxa - maxb;


  do { if (((IEEE80211_IS_CHAN_5GHZ(a->base.se_chan)) ^ (IEEE80211_IS_CHAN_5GHZ(b->base.se_chan))) & (1)) return ((IEEE80211_IS_CHAN_5GHZ(a->base.se_chan)) & (1)) ? 1 : -1; } while (0);

 }

 return a->base.se_rssi - b->base.se_rssi;

}
