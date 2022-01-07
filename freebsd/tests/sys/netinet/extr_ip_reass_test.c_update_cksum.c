
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct ip {int ip_sum; } ;


 int htons (int ) ;
 scalar_t__ ntohs (int ) ;

__attribute__((used)) static void
update_cksum(struct ip *ip)
{
 size_t i;
 uint32_t cksum;
 uint16_t *cksump;

 ip->ip_sum = 0;
 cksump = (uint16_t *)ip;
 for (cksum = 0, i = 0; i < sizeof(*ip) / sizeof(*cksump); cksump++, i++)
  cksum += ntohs(*cksump);
 cksum = (cksum >> 16) + (cksum & 0xffff);
 cksum = ~(cksum + (cksum >> 16));
 ip->ip_sum = htons((uint16_t)cksum);
}
