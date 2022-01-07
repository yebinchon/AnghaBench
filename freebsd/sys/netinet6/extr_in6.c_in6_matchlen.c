
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct in6_addr {int dummy; } ;



int
in6_matchlen(struct in6_addr *src, struct in6_addr *dst)
{
 int match = 0;
 u_char *s = (u_char *)src, *d = (u_char *)dst;
 u_char *lim = s + 16, r;

 while (s < lim)
  if ((r = (*d++ ^ *s++)) != 0) {
   while (r < 128) {
    match++;
    r <<= 1;
   }
   break;
  } else
   match += 8;
 return match;
}
