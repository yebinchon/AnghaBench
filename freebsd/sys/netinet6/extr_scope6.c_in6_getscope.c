
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct in6_addr {int * s6_addr16; } ;


 scalar_t__ IN6_IS_ADDR_MC_INTFACELOCAL (struct in6_addr const*) ;
 scalar_t__ IN6_IS_SCOPE_LINKLOCAL (struct in6_addr const*) ;

uint16_t
in6_getscope(const struct in6_addr *in6)
{

 if (IN6_IS_SCOPE_LINKLOCAL(in6) || IN6_IS_ADDR_MC_INTFACELOCAL(in6))
  return (in6->s6_addr16[1]);

 return (0);
}
