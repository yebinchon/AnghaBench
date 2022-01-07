
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in6_addr {int* s6_addr8; } ;



__attribute__((used)) static void
nptv6_copy_addr(struct in6_addr *src, struct in6_addr *dst,
    struct in6_addr *mask)
{
 int i;

 for (i = 0; i < 8 && mask->s6_addr8[i] != 0; i++) {
  dst->s6_addr8[i] &= ~mask->s6_addr8[i];
  dst->s6_addr8[i] |= src->s6_addr8[i] & mask->s6_addr8[i];
 }
}
