
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint16_t ;


 int ADDSHORT (int*,scalar_t__) ;



 int IEEE80211_ELEMID_MESHPEER ;
 int IEEE80211_MPM_BASE_SZ ;
 int IEEE80211_MPM_MAX_SZ ;
 scalar_t__ IEEE80211_MPPID_MPM ;
 int KASSERT (int,char*) ;

uint8_t *
ieee80211_add_meshpeer(uint8_t *frm, uint8_t subtype, uint16_t localid,
    uint16_t peerid, uint16_t reason)
{

 KASSERT(localid != 0, ("localid == 0"));

 *frm++ = IEEE80211_ELEMID_MESHPEER;
 switch (subtype) {
 case 128:
  *frm++ = IEEE80211_MPM_BASE_SZ;
  ADDSHORT(frm, IEEE80211_MPPID_MPM);
  ADDSHORT(frm, localid);
  break;
 case 129:
  KASSERT(peerid != 0, ("sending peer confirm without peer id"));
  *frm++ = IEEE80211_MPM_BASE_SZ + 2;
  ADDSHORT(frm, IEEE80211_MPPID_MPM);
  ADDSHORT(frm, localid);
  ADDSHORT(frm, peerid);
  break;
 case 130:
  if (peerid)
   *frm++ = IEEE80211_MPM_MAX_SZ;
  else
   *frm++ = IEEE80211_MPM_BASE_SZ + 2;
  ADDSHORT(frm, IEEE80211_MPPID_MPM);
  ADDSHORT(frm, localid);
  if (peerid)
   ADDSHORT(frm, peerid);
  ADDSHORT(frm, reason);
  break;
 }
 return frm;
}
