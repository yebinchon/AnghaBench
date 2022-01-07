
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct in_addr {int dummy; } ;
struct ifnet {int dummy; } ;


 int arprequest_internal (struct ifnet*,struct in_addr const*,struct in_addr const*,int *) ;

void
arprequest(struct ifnet *ifp, const struct in_addr *sip,
    const struct in_addr *tip, u_char *enaddr)
{

 (void) arprequest_internal(ifp, sip, tip, enaddr);
}
