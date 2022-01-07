
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct ip6_hdr {int ip6_src; } ;
struct TYPE_3__ {int s_addr; } ;
struct TYPE_4__ {int s_addr; } ;
struct ip {TYPE_1__ ip_dst; TYPE_2__ ip_src; } ;



__attribute__((used)) static uint16_t
nat64_cksum_convert(struct ip6_hdr *ip6, struct ip *ip)
{
 uint32_t sum;
 uint16_t *p;

 sum = ~ip->ip_src.s_addr >> 16;
 sum += ~ip->ip_src.s_addr & 0xffff;
 sum += ~ip->ip_dst.s_addr >> 16;
 sum += ~ip->ip_dst.s_addr & 0xffff;

 for (p = (uint16_t *)&ip6->ip6_src;
     p < (uint16_t *)(&ip6->ip6_src + 2); p++)
  sum += *p;

 while (sum >> 16)
  sum = (sum & 0xffff) + (sum >> 16);
 return (sum);
}
