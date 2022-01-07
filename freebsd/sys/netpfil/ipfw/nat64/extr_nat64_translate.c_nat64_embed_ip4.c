
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in6_addr {int* s6_addr32; scalar_t__* s6_addr8; } ;
typedef int in_addr_t ;


 int panic (char*,int) ;

void
nat64_embed_ip4(struct in6_addr *ip6, int plen, in_addr_t ia)
{

 switch (plen) {
 case 32:
 case 96:
  ip6->s6_addr32[plen / 32] = ia;
  break;
 case 40:
 case 48:
 case 56:





  ip6->s6_addr32[1] &= 0xffffffff << (32 - plen % 32);

  ip6->s6_addr32[1] |= ia >> (plen % 32);
  ip6->s6_addr32[2] = ia << (24 - plen % 32);




  break;
 case 64:

  ip6->s6_addr32[2] = ia >> 8;
  ip6->s6_addr32[3] = ia << 24;




  break;
 default:
  panic("Wrong plen: %d", plen);
 };





 ip6->s6_addr8[8] = 0;
}
