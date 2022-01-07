
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct ieee80211_radiotap_header {int it_len; int it_present; } ;
struct ieee80211_frame {int dummy; } ;
struct bpf_hdr {int bh_hdrlen; int bh_caplen; } ;


 int BIT (int ) ;
 scalar_t__ IEEE80211_CRC_LEN ;
 int IEEE80211_RADIOTAP_FLAGS ;
 int IEEE80211_RADIOTAP_F_FCS ;
 int IEEE80211_RADIOTAP_TSFT ;
 int abort () ;
 int assert (int) ;
 int le32toh (int ) ;
 scalar_t__ memcmp (struct ieee80211_frame*,struct ieee80211_frame*,int) ;
 int possible_match (struct ieee80211_frame*,int,struct ieee80211_frame*,int) ;
 int printf (char*,...) ;

int do_verify(struct ieee80211_frame *sent, int slen, void *got, int glen)
{

 struct bpf_hdr *bpfh = got;
 struct ieee80211_frame *wh;
 struct ieee80211_radiotap_header *rth;
 int i;
 unsigned char *ptr, *ptr2;
 uint32_t present;
 uint8_t rflags;


 glen -= bpfh->bh_hdrlen;
 assert(glen > 0);
 if (bpfh->bh_caplen != glen) {
  abort();
 }
 rth = (struct ieee80211_radiotap_header*)
       ((char*) bpfh + bpfh->bh_hdrlen);
 glen -= rth->it_len;
 assert(glen > 0);
 wh = (struct ieee80211_frame*) ((char*)rth + rth->it_len);


 present = le32toh(rth->it_present);
 if (present & (1<<(IEEE80211_RADIOTAP_FLAGS))) {
  if (present & (1<<(IEEE80211_RADIOTAP_TSFT)))
   rflags = ((const uint8_t *)rth)[8];
  else
   rflags = ((const uint8_t *)rth)[0];
 } else
  rflags = 0;
 if (rflags & IEEE80211_RADIOTAP_F_FCS)
  glen -= IEEE80211_CRC_LEN;
 assert(glen > 0);


 if (!possible_match(sent, slen, wh, glen))
  return 0;


 if (memcmp(sent, wh, slen) == 0) {
  printf("No mangling---got it perfect\n");
  return 1;
 }


 printf("Got mangled:\n");
 ptr = (unsigned char*) sent;
 ptr2 = (unsigned char *) wh;
 for (i = 0; i < slen; i++, ptr++, ptr2++) {
  if (*ptr != *ptr2)
   printf("Position: %d Was: %.2X Got: %.2X\n",
          i, *ptr, *ptr2);
 }
 return -1;

}
