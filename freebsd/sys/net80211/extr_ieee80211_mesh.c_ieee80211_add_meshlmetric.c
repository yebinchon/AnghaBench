
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int ADDWORD (int *,int ) ;
 int IEEE80211_ELEMID_MESHLINK ;

uint8_t *
ieee80211_add_meshlmetric(uint8_t *frm, uint8_t flags, uint32_t metric)
{
 *frm++ = IEEE80211_ELEMID_MESHLINK;
 *frm++ = 5;
 *frm++ = flags;
 ADDWORD(frm, metric);
 return frm;
}
