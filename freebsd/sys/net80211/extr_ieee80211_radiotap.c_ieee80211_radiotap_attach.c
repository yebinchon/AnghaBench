
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ieee80211com {int dummy; } ;
struct ieee80211_radiotap_header {int dummy; } ;


 int ieee80211_radiotap_attachv (struct ieee80211com*,struct ieee80211_radiotap_header*,int,int ,int ,struct ieee80211_radiotap_header*,int,int ,int ) ;

void
ieee80211_radiotap_attach(struct ieee80211com *ic,
 struct ieee80211_radiotap_header *th, int tlen, uint32_t tx_radiotap,
 struct ieee80211_radiotap_header *rh, int rlen, uint32_t rx_radiotap)
{
 ieee80211_radiotap_attachv(ic, th, tlen, 0, tx_radiotap,
     rh, rlen, 0, rx_radiotap);
}
