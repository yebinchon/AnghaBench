
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct in6_addr {int dummy; } ;


 int memset (struct in6_addr*,int ,int) ;
 int* pl2m ;

__attribute__((used)) static struct in6_addr *
plen2mask(int n)
{
 static struct in6_addr ia;
 u_char *p;
 int i;

 memset(&ia, 0, sizeof(struct in6_addr));
 p = (u_char *)&ia;
 for (i = 0; i < 16; i++, p++, n -= 8) {
  if (n >= 8) {
   *p = 0xff;
   continue;
  }
  *p = pl2m[n];
  break;
 }
 return &ia;
}
