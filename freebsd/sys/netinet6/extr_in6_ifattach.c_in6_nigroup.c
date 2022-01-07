
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in6_addr {int dummy; } ;
struct ifnet {int dummy; } ;


 int in6_nigroup0 (struct ifnet*,char const*,int,struct in6_addr*,int ) ;

int
in6_nigroup(struct ifnet *ifp, const char *name, int namelen,
    struct in6_addr *in6)
{

 return (in6_nigroup0(ifp, name, namelen, in6, 0));
}
