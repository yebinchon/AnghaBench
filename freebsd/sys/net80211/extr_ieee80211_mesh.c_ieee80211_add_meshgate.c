
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ieee80211_meshgann_ie {int gann_interval; int gann_seq; int gann_addr; int gann_ttl; int gann_hopcount; int gann_flags; } ;


 int ADDSHORT (int *,int ) ;
 int ADDWORD (int *,int ) ;
 int IEEE80211_ADDR_COPY (int *,int ) ;
 int IEEE80211_ELEMID_MESHGANN ;
 int IEEE80211_MESHGANN_BASE_SZ ;

uint8_t *
ieee80211_add_meshgate(uint8_t *frm, struct ieee80211_meshgann_ie *ie)
{
 *frm++ = IEEE80211_ELEMID_MESHGANN;
 *frm++ = IEEE80211_MESHGANN_BASE_SZ;
 *frm++ = ie->gann_flags;
 *frm++ = ie->gann_hopcount;
 *frm++ = ie->gann_ttl;
 IEEE80211_ADDR_COPY(frm, ie->gann_addr);
 frm += 6;
 ADDWORD(frm, ie->gann_seq);
 ADDSHORT(frm, ie->gann_interval);
 return frm;
}
