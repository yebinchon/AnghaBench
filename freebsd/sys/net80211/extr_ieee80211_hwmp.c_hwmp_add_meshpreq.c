
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ieee80211_meshpreq_ie {int preq_flags; int preq_tcount; int preq_metric; int preq_lifetime; int preq_orig_ext_addr; int preq_origseq; int preq_origaddr; int preq_id; int preq_ttl; int preq_hopcount; int preq_len; } ;


 int ADDWORD (int *,int ) ;
 int IEEE80211_ADDR_COPY (int *,int ) ;
 int IEEE80211_ELEMID_MESHPREQ ;
 int IEEE80211_MESHPREQ_FLAGS_AE ;
 int PREQ_TADDR (int) ;
 int PREQ_TFLAGS (int) ;
 int PREQ_TSEQ (int) ;

__attribute__((used)) static uint8_t *
hwmp_add_meshpreq(uint8_t *frm, const struct ieee80211_meshpreq_ie *preq)
{
 int i;

 *frm++ = IEEE80211_ELEMID_MESHPREQ;
 *frm++ = preq->preq_len;
 *frm++ = preq->preq_flags;
 *frm++ = preq->preq_hopcount;
 *frm++ = preq->preq_ttl;
 ADDWORD(frm, preq->preq_id);
 IEEE80211_ADDR_COPY(frm, preq->preq_origaddr); frm += 6;
 ADDWORD(frm, preq->preq_origseq);
 if (preq->preq_flags & IEEE80211_MESHPREQ_FLAGS_AE) {
  IEEE80211_ADDR_COPY(frm, preq->preq_orig_ext_addr);
  frm += 6;
 }
 ADDWORD(frm, preq->preq_lifetime);
 ADDWORD(frm, preq->preq_metric);
 *frm++ = preq->preq_tcount;
 for (i = 0; i < preq->preq_tcount; i++) {
  *frm++ = PREQ_TFLAGS(i);
  IEEE80211_ADDR_COPY(frm, PREQ_TADDR(i));
  frm += 6;
  ADDWORD(frm, PREQ_TSEQ(i));
 }
 return frm;
}
