
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int ic_curmode; int * ic_sup_rates; } ;
typedef enum ieee80211_phymode { ____Placeholder_ieee80211_phymode } ieee80211_phymode ;


 int IEEE80211_MODE_11B ;
 int IEEE80211_MODE_11G ;
 int ieee80211_reset_erp (struct ieee80211com*) ;
 int ieee80211_setbasicrates (int *,int) ;

int
ieee80211_setmode(struct ieee80211com *ic, enum ieee80211_phymode mode)
{






 if (mode == IEEE80211_MODE_11G || mode == IEEE80211_MODE_11B)
  ieee80211_setbasicrates(&ic->ic_sup_rates[mode], mode);

 ic->ic_curmode = mode;
 ieee80211_reset_erp(ic);

 return 0;
}
