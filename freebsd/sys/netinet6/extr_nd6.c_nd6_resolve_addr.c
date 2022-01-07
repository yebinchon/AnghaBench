
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct sockaddr_in6 {int dummy; } ;
struct sockaddr {int dummy; } ;
struct ifnet {int dummy; } ;


 int LLE_ADDRONLY ;
 int nd6_resolve_slow (struct ifnet*,int,int *,struct sockaddr_in6 const*,char*,int *,int *) ;

int
nd6_resolve_addr(struct ifnet *ifp, int flags, const struct sockaddr *dst,
    char *desten, uint32_t *pflags)
{
 int error;

 flags |= LLE_ADDRONLY;
 error = nd6_resolve_slow(ifp, flags, ((void*)0),
     (const struct sockaddr_in6 *)dst, desten, pflags, ((void*)0));
 return (error);
}
