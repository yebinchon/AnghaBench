
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IEEE80211_RSSADAPT_BKT0 ;
 int IEEE80211_RSSADAPT_BKTPOWER ;
 int IEEE80211_RSSADAPT_BKTS ;

__attribute__((used)) static __inline int
bucket(int pktlen)
{
 int i, top, thridx;

 for (i = 0, top = IEEE80211_RSSADAPT_BKT0;
      i < IEEE80211_RSSADAPT_BKTS;
      i++, top <<= IEEE80211_RSSADAPT_BKTPOWER) {
  thridx = i;
  if (pktlen <= top)
   break;
 }
 return thridx;
}
