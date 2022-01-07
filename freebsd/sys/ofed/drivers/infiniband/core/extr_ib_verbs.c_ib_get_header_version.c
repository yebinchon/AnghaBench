
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union rdma_network_hdr {int ibgrh; int roce4grh; } ;
struct ip6_hdr {int ip6_vfc; } ;
struct ip {int ip_v; int ip_hl; scalar_t__ ip_sum; } ;
typedef int ip4h_checked ;


 int IPV6_VERSION ;
 int IPV6_VERSION_MASK ;
 scalar_t__ in_cksum_hdr (struct ip*) ;
 int memcpy (struct ip*,struct ip const*,int) ;

__attribute__((used)) static int ib_get_header_version(const union rdma_network_hdr *hdr)
{
 const struct ip *ip4h = (const struct ip *)&hdr->roce4grh;
 struct ip ip4h_checked;
 const struct ip6_hdr *ip6h = (const struct ip6_hdr *)&hdr->ibgrh;




 if ((ip6h->ip6_vfc & IPV6_VERSION_MASK) != IPV6_VERSION)
  return (ip4h->ip_v == 4) ? 4 : 0;





 if (ip4h->ip_hl != 5)
  return 6;





 memcpy(&ip4h_checked, ip4h, sizeof(ip4h_checked));
 ip4h_checked.ip_sum = 0;




 if (ip4h->ip_sum == ip4h_checked.ip_sum)
  return 4;
 return 6;
}
