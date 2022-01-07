
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ieee80211_meshrann_ie {int rann_metric; int rann_interval; int rann_seq; int rann_addr; int rann_ttl; int rann_hopcount; int rann_flags; int rann_len; } ;


 int ADDWORD (int *,int ) ;
 int IEEE80211_ADDR_COPY (int *,int ) ;
 int IEEE80211_ELEMID_MESHRANN ;

__attribute__((used)) static uint8_t *
hwmp_add_meshrann(uint8_t *frm, const struct ieee80211_meshrann_ie *rann)
{
 *frm++ = IEEE80211_ELEMID_MESHRANN;
 *frm++ = rann->rann_len;
 *frm++ = rann->rann_flags;
 *frm++ = rann->rann_hopcount;
 *frm++ = rann->rann_ttl;
 IEEE80211_ADDR_COPY(frm, rann->rann_addr); frm += 6;
 ADDWORD(frm, rann->rann_seq);
 ADDWORD(frm, rann->rann_interval);
 ADDWORD(frm, rann->rann_metric);
 return frm;
}
