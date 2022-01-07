
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int u_int32_t ;
typedef int u_int16_t ;
struct ip6_hdr {int dummy; } ;


 int REDUCE ;
 int _in6_cksum_pseudo (struct ip6_hdr*,int ,int ,int ) ;

int
in6_cksum_pseudo(struct ip6_hdr *ip6, uint32_t len, uint8_t nxt, uint16_t csum)
{
 int sum;
 union {
  u_int16_t s[2];
  u_int32_t l;
 } l_util;

 sum = _in6_cksum_pseudo(ip6, len, nxt, csum);
 REDUCE;
 return (sum);
}
