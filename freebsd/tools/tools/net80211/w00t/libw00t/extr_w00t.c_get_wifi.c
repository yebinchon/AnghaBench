
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct ieee80211_radiotap_header {int it_len; int it_present; } ;
struct bpf_hdr {int bh_hdrlen; int bh_caplen; } ;


 int BIT (int ) ;
 scalar_t__ IEEE80211_CRC_LEN ;
 int IEEE80211_RADIOTAP_FLAGS ;
 int IEEE80211_RADIOTAP_F_FCS ;
 int IEEE80211_RADIOTAP_TSFT ;
 int assert (int) ;
 int le32toh (int ) ;

void *get_wifi(void *buf, int *len)
{

 struct bpf_hdr* bpfh = (struct bpf_hdr*) buf;
 struct ieee80211_radiotap_header* rth;
 uint32_t present;
 uint8_t rflags;
 void *ptr;


 *len -= bpfh->bh_hdrlen;

 if (bpfh->bh_caplen != *len) {
  assert(bpfh->bh_caplen < *len);
  *len = bpfh->bh_caplen;
 }
 assert(bpfh->bh_caplen == *len);


 rth = (struct ieee80211_radiotap_header*)
       ((char*)bpfh + bpfh->bh_hdrlen);


 present = le32toh(rth->it_present);
 if (present & (1<<(IEEE80211_RADIOTAP_FLAGS))) {
  if (present & (1<<(IEEE80211_RADIOTAP_TSFT)))
   rflags = ((const uint8_t *)rth)[8];
  else
   rflags = ((const uint8_t *)rth)[0];
 } else
  rflags = 0;
 *len -= rth->it_len;


 if (rflags & IEEE80211_RADIOTAP_F_FCS)
  *len -= IEEE80211_CRC_LEN;

 ptr = (char*)rth + rth->it_len;
 return ptr;

}
