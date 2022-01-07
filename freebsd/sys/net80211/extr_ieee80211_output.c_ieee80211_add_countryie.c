
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ieee80211com {scalar_t__ ic_countryie_chan; scalar_t__ ic_bsschan; int * ic_countryie; } ;


 int IEEE80211_FREE (int *,int ) ;
 int M_80211_NODE_IE ;
 int * add_appie (int *,int *) ;
 int * ieee80211_alloc_countryie (struct ieee80211com*) ;

__attribute__((used)) static uint8_t *
ieee80211_add_countryie(uint8_t *frm, struct ieee80211com *ic)
{

 if (ic->ic_countryie == ((void*)0) ||
     ic->ic_countryie_chan != ic->ic_bsschan) {





  if (ic->ic_countryie != ((void*)0))
   IEEE80211_FREE(ic->ic_countryie, M_80211_NODE_IE);
  ic->ic_countryie = ieee80211_alloc_countryie(ic);
  if (ic->ic_countryie == ((void*)0))
   return frm;
  ic->ic_countryie_chan = ic->ic_bsschan;
 }
 return add_appie(frm, ic->ic_countryie);
}
