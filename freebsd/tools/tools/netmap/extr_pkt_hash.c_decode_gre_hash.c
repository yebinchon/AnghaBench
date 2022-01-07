
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct ip6_hdr {int dummy; } ;
struct ip {int dummy; } ;




 int decode_ip_n_hash (struct ip*,int,int) ;
 int decode_ipv6_n_hash (struct ip6_hdr*,int,int) ;
 int ntohs (int) ;
 int pkt_hdr_hash (int const*,int,int) ;

__attribute__((used)) static uint32_t
decode_gre_hash(const uint8_t *grehdr, uint8_t hash_split, uint8_t seed)
{
 uint32_t rc = 0;
 int len = 4 + 2 * (!!(*grehdr & 1) +
      !!(*grehdr & 2) +
      !!(*grehdr & 4) +
      !!(*grehdr & 8));
 uint16_t proto = ntohs(*(uint16_t *)(void *)(grehdr + 2));

 switch (proto) {
 case 129:
  rc = decode_ip_n_hash((struct ip *)(grehdr + len),
          hash_split, seed);
  break;
 case 128:
  rc = decode_ipv6_n_hash((struct ip6_hdr *)(grehdr + len),
     hash_split, seed);
  break;
 case 0x6558:
  rc = pkt_hdr_hash(grehdr + len, hash_split, seed);
  break;
 default:

  break;
 }
 return rc;
}
