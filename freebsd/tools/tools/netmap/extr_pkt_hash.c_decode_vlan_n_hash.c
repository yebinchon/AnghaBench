
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct vlanhdr {int proto; } ;
struct ip6_hdr {int dummy; } ;
struct ip {int dummy; } ;
struct ether_header {int dummy; } ;





 int decode_ip_n_hash (struct ip*,int ,int ) ;
 int decode_ipv6_n_hash (struct ip6_hdr*,int ,int ) ;
 int decode_others_n_hash (struct ether_header*,int ) ;
 int ntohs (int ) ;

__attribute__((used)) static inline uint32_t
decode_vlan_n_hash(struct ether_header *ethh, uint8_t hash_split, uint8_t seed)
{
 uint32_t rc = 0;
 struct vlanhdr *vhdr = (struct vlanhdr *)(ethh + 1);

 switch (ntohs(vhdr->proto)) {
 case 129:
  rc = decode_ip_n_hash((struct ip *)(vhdr + 1),
          hash_split, seed);
  break;
 case 128:
  rc = decode_ipv6_n_hash((struct ip6_hdr *)(vhdr + 1),
     hash_split, seed);
  break;
 case 130:
 default:

  rc = decode_others_n_hash(ethh, seed);
  break;
 }
 return rc;
}
