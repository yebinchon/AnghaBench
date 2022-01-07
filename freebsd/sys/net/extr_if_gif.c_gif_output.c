
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct sockaddr {scalar_t__ sa_family; int sa_data; } ;
struct route {int dummy; } ;
struct TYPE_2__ {scalar_t__ csum_data; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct ifnet {int (* if_transmit ) (struct ifnet*,struct mbuf*) ;} ;
typedef int af ;


 scalar_t__ AF_UNSPEC ;
 int bcopy (int ,scalar_t__*,int) ;
 int stub1 (struct ifnet*,struct mbuf*) ;

int
gif_output(struct ifnet *ifp, struct mbuf *m, const struct sockaddr *dst,
 struct route *ro)
{
 uint32_t af;

 if (dst->sa_family == AF_UNSPEC)
  bcopy(dst->sa_data, &af, sizeof(af));
 else
  af = dst->sa_family;





 m->m_pkthdr.csum_data = af;
 return (ifp->if_transmit(ifp, m));
}
