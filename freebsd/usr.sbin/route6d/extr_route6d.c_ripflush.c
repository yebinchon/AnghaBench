
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr_in6 {int sin6_addr; scalar_t__ sin6_port; } ;
struct netinfo6 {scalar_t__ rip6_metric; scalar_t__ rip6_tag; int rip6_plen; int rip6_dest; } ;
struct TYPE_3__ {int sin6_addr; } ;
struct ifc {int ifc_flags; TYPE_1__ ifc_ripsin; int ifc_name; } ;
struct TYPE_4__ {struct netinfo6* rip6_nets; } ;


 int EAFNOSUPPORT ;
 int IFF_UP ;
 scalar_t__ IN6_IS_ADDR_UNSPECIFIED (int *) ;
 scalar_t__ NEXTHOP_METRIC ;
 int RIPSIZE (int) ;
 int dflag ;
 int inet6_n2p (int *) ;
 int ntohs (scalar_t__) ;
 TYPE_2__* ripbuf ;
 int sendpacket (struct sockaddr_in6*,int ) ;
 int trace (int,char*,...) ;
 int tracet (int,char*,int,...) ;

__attribute__((used)) static void
ripflush(struct ifc *ifcp, struct sockaddr_in6 *sin6, int nrt, struct netinfo6 *np)
{
 int i;
 int error;

 if (ifcp)
  tracet(1, "Send(%s): info(%d) to %s.%d\n",
   ifcp->ifc_name, nrt,
   inet6_n2p(&sin6->sin6_addr), ntohs(sin6->sin6_port));
 else
  tracet(1, "Send: info(%d) to %s.%d\n",
   nrt, inet6_n2p(&sin6->sin6_addr), ntohs(sin6->sin6_port));
 if (dflag >= 2) {
  np = ripbuf->rip6_nets;
  for (i = 0; i < nrt; i++, np++) {
   if (np->rip6_metric == NEXTHOP_METRIC) {
    if (IN6_IS_ADDR_UNSPECIFIED(&np->rip6_dest))
     trace(2, "    NextHop reset");
    else {
     trace(2, "    NextHop %s",
      inet6_n2p(&np->rip6_dest));
    }
   } else {
    trace(2, "    %s/%d[%d]",
     inet6_n2p(&np->rip6_dest),
     np->rip6_plen, np->rip6_metric);
   }
   if (np->rip6_tag) {
    trace(2, "  tag=0x%04x",
     ntohs(np->rip6_tag) & 0xffff);
   }
   trace(2, "\n");
  }
 }
 error = sendpacket(sin6, RIPSIZE(nrt));
 if (error == EAFNOSUPPORT) {

  if (ifcp != ((void*)0)) {
   tracet(1, "Could not send info to %s (%s): "
       "set IFF_UP to 0\n",
       ifcp->ifc_name,
       inet6_n2p(&ifcp->ifc_ripsin.sin6_addr));

   ifcp->ifc_flags &= ~IFF_UP;
  } else {
   tracet(1, "Could not send info to %s\n",
       inet6_n2p(&sin6->sin6_addr));
  }
 }
}
