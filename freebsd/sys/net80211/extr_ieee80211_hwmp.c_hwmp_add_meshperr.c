
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ieee80211_meshperr_ie {int perr_ndests; int perr_ttl; int perr_len; } ;


 int ADDSHORT (int *,int ) ;
 int ADDWORD (int *,int ) ;
 int IEEE80211_ADDR_COPY (int *,int ) ;
 int IEEE80211_ELEMID_MESHPERR ;
 int IEEE80211_MESHPERR_FLAGS_AE ;
 int PERR_DADDR (int) ;
 int PERR_DFLAGS (int) ;
 int PERR_DRCODE (int) ;
 int PERR_DSEQ (int) ;
 int PERR_EXTADDR (int) ;

__attribute__((used)) static uint8_t *
hwmp_add_meshperr(uint8_t *frm, const struct ieee80211_meshperr_ie *perr)
{
 int i;

 *frm++ = IEEE80211_ELEMID_MESHPERR;
 *frm++ = perr->perr_len;
 *frm++ = perr->perr_ttl;
 *frm++ = perr->perr_ndests;
 for (i = 0; i < perr->perr_ndests; i++) {
  *frm++ = PERR_DFLAGS(i);
  IEEE80211_ADDR_COPY(frm, PERR_DADDR(i));
  frm += 6;
  ADDWORD(frm, PERR_DSEQ(i));
  if (PERR_DFLAGS(i) & IEEE80211_MESHPERR_FLAGS_AE) {
   IEEE80211_ADDR_COPY(frm, PERR_EXTADDR(i));
   frm += 6;
  }
  ADDSHORT(frm, PERR_DRCODE(i));
 }
 return frm;
}
