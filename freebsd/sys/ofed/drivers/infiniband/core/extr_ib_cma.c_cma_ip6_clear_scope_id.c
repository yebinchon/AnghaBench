
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in6_addr {scalar_t__* s6_addr; } ;


 scalar_t__ IN6_IS_ADDR_MC_INTFACELOCAL (struct in6_addr*) ;
 scalar_t__ IN6_IS_SCOPE_LINKLOCAL (struct in6_addr*) ;

__attribute__((used)) static void cma_ip6_clear_scope_id(struct in6_addr *addr)
{

 if (IN6_IS_SCOPE_LINKLOCAL(addr) ||
     IN6_IS_ADDR_MC_INTFACELOCAL(addr)) {

  addr->s6_addr[2] = 0;
  addr->s6_addr[3] = 0;
 }
}
