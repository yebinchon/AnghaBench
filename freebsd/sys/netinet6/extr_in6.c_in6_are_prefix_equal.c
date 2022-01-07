
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in6_addr {int* s6_addr; } ;


 int LOG_ERR ;
 scalar_t__ bcmp (int**,int**,int) ;
 int log (int ,char*,int) ;

int
in6_are_prefix_equal(struct in6_addr *p1, struct in6_addr *p2, int len)
{
 int bytelen, bitlen;


 if (0 > len || len > 128) {
  log(LOG_ERR, "in6_are_prefix_equal: invalid prefix length(%d)\n",
      len);
  return (0);
 }

 bytelen = len / 8;
 bitlen = len % 8;

 if (bcmp(&p1->s6_addr, &p2->s6_addr, bytelen))
  return (0);
 if (bitlen != 0 &&
     p1->s6_addr[bytelen] >> (8 - bitlen) !=
     p2->s6_addr[bytelen] >> (8 - bitlen))
  return (0);

 return (1);
}
