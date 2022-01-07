
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ieee80211com {scalar_t__ ic_nonerpsta; int ic_flags; } ;


 int IEEE80211_ELEMID_ERP ;
 int IEEE80211_ERP_LONG_PREAMBLE ;
 int IEEE80211_ERP_NON_ERP_PRESENT ;
 int IEEE80211_ERP_USE_PROTECTION ;
 int IEEE80211_F_USEBARKER ;
 int IEEE80211_F_USEPROT ;

__attribute__((used)) static uint8_t *
ieee80211_add_erp(uint8_t *frm, struct ieee80211com *ic)
{
 uint8_t erp;

 *frm++ = IEEE80211_ELEMID_ERP;
 *frm++ = 1;
 erp = 0;
 if (ic->ic_nonerpsta != 0)
  erp |= IEEE80211_ERP_NON_ERP_PRESENT;
 if (ic->ic_flags & IEEE80211_F_USEPROT)
  erp |= IEEE80211_ERP_USE_PROTECTION;
 if (ic->ic_flags & IEEE80211_F_USEBARKER)
  erp |= IEEE80211_ERP_LONG_PREAMBLE;
 *frm++ = erp;
 return frm;
}
