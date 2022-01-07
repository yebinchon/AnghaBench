
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct sockaddr {int dummy; } ;
struct in6_addr {int dummy; } ;
struct ifnet {int dummy; } ;


 int RT_DEFAULT_FIB ;
 int nd6_na_output_fib (struct ifnet*,struct in6_addr const*,struct in6_addr const*,int ,int,struct sockaddr*,int ) ;

void
nd6_na_output(struct ifnet *ifp, const struct in6_addr *daddr6_0,
    const struct in6_addr *taddr6, u_long flags, int tlladdr,
    struct sockaddr *sdl0)
{

 nd6_na_output_fib(ifp, daddr6_0, taddr6, flags, tlladdr, sdl0,
     RT_DEFAULT_FIB);
}
