
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct in6_addr {int dummy; } ;
struct ifnet {int dummy; } ;


 int RT_DEFAULT_FIB ;
 int nd6_ns_output_fib (struct ifnet*,struct in6_addr const*,struct in6_addr const*,struct in6_addr const*,int *,int ) ;

void
nd6_ns_output(struct ifnet *ifp, const struct in6_addr *saddr6,
    const struct in6_addr *daddr6, const struct in6_addr *taddr6,uint8_t *nonce)
{

 nd6_ns_output_fib(ifp, saddr6, daddr6, taddr6, nonce, RT_DEFAULT_FIB);
}
