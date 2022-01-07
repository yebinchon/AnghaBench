
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ieee80211_ds_plcp_hdr {int i_service; int i_length; int i_signal; } ;


 int IEEE80211_PLCP_SERVICE_LENEXT7 ;
 int IEEE80211_PLCP_SERVICE_LOCKED ;
 int IEEE80211_T_CCK ;
 int NBBY ;
 int howmany (int,int) ;
 int htole16 (int) ;
 int ieee80211_rate2plcp (int,int ) ;

__attribute__((used)) static __inline void
bwi_ds_plcp_header(struct ieee80211_ds_plcp_hdr *plcp, int pkt_len,
     uint8_t rate)
{
 int len, service, pkt_bitlen;

 pkt_bitlen = pkt_len * NBBY;
 len = howmany(pkt_bitlen * 2, rate);

 service = IEEE80211_PLCP_SERVICE_LOCKED;
 if (rate == (11 * 2)) {
  int pkt_bitlen1;





  pkt_bitlen1 = len * 11;
  if (pkt_bitlen1 - pkt_bitlen >= NBBY)
   service |= IEEE80211_PLCP_SERVICE_LENEXT7;
 }

 plcp->i_signal = ieee80211_rate2plcp(rate, IEEE80211_T_CCK);
 plcp->i_service = service;
 plcp->i_length = htole16(len);

}
