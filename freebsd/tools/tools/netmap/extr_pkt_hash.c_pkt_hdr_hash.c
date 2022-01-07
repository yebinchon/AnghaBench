
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct ip6_hdr {int dummy; } ;
struct ip {int dummy; } ;
struct ether_header {int ether_type; } ;






 int decode_ip_n_hash (struct ip*,int ,int ) ;
 int decode_ipv6_n_hash (struct ip6_hdr*,int ,int ) ;
 int decode_others_n_hash (struct ether_header*,int ) ;
 int decode_vlan_n_hash (struct ether_header*,int ,int ) ;
 int ntohs (int ) ;

uint32_t
pkt_hdr_hash(const unsigned char *buffer, uint8_t hash_split, uint8_t seed)
{
 uint32_t rc = 0;
 struct ether_header *ethh = (struct ether_header *)buffer;

 switch (ntohs(ethh->ether_type)) {
 case 130:
  rc = decode_ip_n_hash((struct ip *)(ethh + 1),
          hash_split, seed);
  break;
 case 129:
  rc = decode_ipv6_n_hash((struct ip6_hdr *)(ethh + 1),
     hash_split, seed);
  break;
 case 128:
  rc = decode_vlan_n_hash(ethh, hash_split, seed);
  break;
 case 131:
 default:

  rc = decode_others_n_hash(ethh, seed);
  break;
 }

 return rc;
}
