
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ieee80211_meshprep_ie {int prep_flags; int prep_origseq; int prep_origaddr; int prep_metric; int prep_lifetime; int prep_target_ext_addr; int prep_targetseq; int prep_targetaddr; int prep_ttl; int prep_hopcount; int prep_len; } ;


 int ADDWORD (int *,int ) ;
 int IEEE80211_ADDR_COPY (int *,int ) ;
 int IEEE80211_ELEMID_MESHPREP ;
 int IEEE80211_MESHPREP_FLAGS_AE ;

__attribute__((used)) static uint8_t *
hwmp_add_meshprep(uint8_t *frm, const struct ieee80211_meshprep_ie *prep)
{
 *frm++ = IEEE80211_ELEMID_MESHPREP;
 *frm++ = prep->prep_len;
 *frm++ = prep->prep_flags;
 *frm++ = prep->prep_hopcount;
 *frm++ = prep->prep_ttl;
 IEEE80211_ADDR_COPY(frm, prep->prep_targetaddr); frm += 6;
 ADDWORD(frm, prep->prep_targetseq);
 if (prep->prep_flags & IEEE80211_MESHPREP_FLAGS_AE) {
  IEEE80211_ADDR_COPY(frm, prep->prep_target_ext_addr);
  frm += 6;
 }
 ADDWORD(frm, prep->prep_lifetime);
 ADDWORD(frm, prep->prep_metric);
 IEEE80211_ADDR_COPY(frm, prep->prep_origaddr); frm += 6;
 ADDWORD(frm, prep->prep_origseq);
 return frm;
}
