
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sockaddr_in6 {int sin6_len; int sin6_family; int sin6_addr; } ;


 int AF_INET6 ;
 int memset (struct sockaddr_in6*,int ,int) ;

__attribute__((used)) static void
plen2mask(struct sockaddr_in6 *mask, int plen)
{
 u_char *cp = (unsigned char *)&mask->sin6_addr;

 memset(mask, 0, sizeof(*mask));
 mask->sin6_family = AF_INET6;
 mask->sin6_len = sizeof(*mask);

 for(; plen >= 8; plen -= 8)
  *cp++ = 0xff;
 if (plen > 0)
  *cp = (0xff << (8 - plen));
}
