
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct netinfo6 {int rip6_metric; } ;
struct TYPE_3__ {int sin6_addr; } ;
struct ifc {int ifc_flags; TYPE_1__ ifc_ripsin; int ifc_name; } ;
struct TYPE_4__ {int rip6_cmd; struct netinfo6* rip6_nets; } ;


 int EAFNOSUPPORT ;
 int HOPCNT_INFINITY6 ;
 int IFF_LOOPBACK ;
 int IFF_UP ;
 int RIP6_REQUEST ;
 int RIP6_RESPONSE ;
 int RIPSIZE (int) ;
 int inet6_n2p (int *) ;
 int memset (struct netinfo6*,int ,int) ;
 TYPE_2__* ripbuf ;
 int sendpacket (TYPE_1__*,int ) ;
 int tracet (int,char*,int ,int ) ;

__attribute__((used)) static void
sendrequest(struct ifc *ifcp)
{
 struct netinfo6 *np;
 int error;

 if (ifcp->ifc_flags & IFF_LOOPBACK)
  return;
 ripbuf->rip6_cmd = RIP6_REQUEST;
 np = ripbuf->rip6_nets;
 memset(np, 0, sizeof(struct netinfo6));
 np->rip6_metric = HOPCNT_INFINITY6;
 tracet(1, "Send rtdump Request to %s (%s)\n",
  ifcp->ifc_name, inet6_n2p(&ifcp->ifc_ripsin.sin6_addr));
 error = sendpacket(&ifcp->ifc_ripsin, RIPSIZE(1));
 if (error == EAFNOSUPPORT) {

  tracet(1, "Could not send rtdump Request to %s (%s): "
   "set IFF_UP to 0\n",
   ifcp->ifc_name, inet6_n2p(&ifcp->ifc_ripsin.sin6_addr));
  ifcp->ifc_flags &= ~IFF_UP;
 }
 ripbuf->rip6_cmd = RIP6_RESPONSE;
}
