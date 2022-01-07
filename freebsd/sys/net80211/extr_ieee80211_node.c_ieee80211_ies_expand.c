
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ieee80211_ies {int* data; int len; int* wpa_ie; int* wme_ie; int* ath_ie; int* tdma_ie; int* rsn_ie; int* htcap_ie; int* htinfo_ie; int* meshid_ie; int* vhtcap_ie; int* vhtopmode_ie; int* vhtpwrenv_ie; int* bssload_ie; int* apchanrep_ie; } ;
 int isatherosoui (int*) ;
 int istdmaoui (int*) ;
 int iswmeoui (int*) ;
 int iswpaoui (int*) ;

void
ieee80211_ies_expand(struct ieee80211_ies *ies)
{
 uint8_t *ie;
 int ielen;

 ie = ies->data;
 ielen = ies->len;
 while (ielen > 0) {
  switch (ie[0]) {
  case 131:
   if (iswpaoui(ie))
    ies->wpa_ie = ie;
   else if (iswmeoui(ie))
    ies->wme_ie = ie;
   break;
  case 132:
   ies->rsn_ie = ie;
   break;
  case 135:
   ies->htcap_ie = ie;
   break;
  case 134:
   ies->htinfo_ie = ie;
   break;





  case 130:
   ies->vhtcap_ie = ie;
   break;
  case 129:
   ies->vhtopmode_ie = ie;
   break;
  case 128:
   ies->vhtpwrenv_ie = ie;
   break;
  case 136:
   ies->bssload_ie = ie;
   break;
  case 137:
   ies->apchanrep_ie = ie;
   break;
  }
  ielen -= 2 + ie[1];
  ie += 2 + ie[1];
 }
}
