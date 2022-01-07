
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct if_encap_req {size_t bufsize; int flags; struct if_encap_req* hdata; int lladdr; int family; int rtype; struct if_encap_req* buf; } ;
typedef struct if_encap_req u_char ;
struct ifnet {int (* if_requestencap ) (struct ifnet*,struct if_encap_req*) ;} ;
struct arphdr {int dummy; } ;
typedef int ereq ;


 int AF_ARP ;
 int IFENCAP_FLAG_BROADCAST ;
 int IFENCAP_LL ;
 int ar_tha (struct arphdr*) ;
 int bzero (struct if_encap_req*,int) ;
 int stub1 (struct ifnet*,struct if_encap_req*) ;

__attribute__((used)) static int
arp_fillheader(struct ifnet *ifp, struct arphdr *ah, int bcast, u_char *buf,
    size_t *bufsize)
{
 struct if_encap_req ereq;
 int error;

 bzero(buf, *bufsize);
 bzero(&ereq, sizeof(ereq));
 ereq.buf = buf;
 ereq.bufsize = *bufsize;
 ereq.rtype = IFENCAP_LL;
 ereq.family = AF_ARP;
 ereq.lladdr = ar_tha(ah);
 ereq.hdata = (u_char *)ah;
 if (bcast)
  ereq.flags = IFENCAP_FLAG_BROADCAST;
 error = ifp->if_requestencap(ifp, &ereq);
 if (error == 0)
  *bufsize = ereq.bufsize;

 return (error);
}
