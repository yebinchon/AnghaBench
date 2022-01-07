
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct in6_addr {int * s6_addr; } ;


 int * plent ;

__attribute__((used)) static void
applyplen(struct in6_addr *ia, int plen)
{
 u_char *p;
 int i;

 p = ia->s6_addr;
 for (i = 0; i < 16; i++) {
  if (plen <= 0)
   *p = 0;
  else if (plen < 8)
   *p &= plent[plen];
  p++, plen -= 8;
 }
}
