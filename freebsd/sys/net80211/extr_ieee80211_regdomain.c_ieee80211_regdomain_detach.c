
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int * ic_countryie; } ;


 int IEEE80211_FREE (int *,int ) ;
 int M_80211_NODE_IE ;

void
ieee80211_regdomain_detach(struct ieee80211com *ic)
{
 if (ic->ic_countryie != ((void*)0)) {
  IEEE80211_FREE(ic->ic_countryie, M_80211_NODE_IE);
  ic->ic_countryie = ((void*)0);
 }
}
