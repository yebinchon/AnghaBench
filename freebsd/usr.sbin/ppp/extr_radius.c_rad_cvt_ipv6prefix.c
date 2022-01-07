
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct in6_addr {int dummy; } ;


 int * malloc (size_t const) ;
 int memcpy (int *,void const*,size_t) ;
 int memset (int *,int ,size_t const) ;

__attribute__((used)) static uint8_t *
rad_cvt_ipv6prefix(const void *data, size_t len)
{
 const size_t ipv6len = sizeof(struct in6_addr) + 2;
 uint8_t *s;

 if (len > ipv6len)
  return ((void*)0);
 s = malloc(ipv6len);
 if (s != ((void*)0)) {
  memset(s, 0, ipv6len);
  memcpy(s, data, len);
 }
 return s;
}
