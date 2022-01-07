
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {scalar_t__ sa_family; } ;
struct route {int dummy; } ;
struct mbuf {int dummy; } ;
struct ifnet {int (* if_transmit ) (struct ifnet*,struct mbuf*) ;} ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int EAFNOSUPPORT ;
 int ENOBUFS ;
 int IFCOUNTER_OERRORS ;
 int IFCOUNTER_OPACKETS ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int stub1 (struct ifnet*,struct mbuf*) ;

__attribute__((used)) static int
uhso_if_output(struct ifnet *ifp, struct mbuf *m0, const struct sockaddr *dst,
    struct route *ro)
{
 int error;


 if (dst->sa_family != AF_INET



  ) {
  return (EAFNOSUPPORT);
 }

 error = (ifp->if_transmit)(ifp, m0);
 if (error) {
  if_inc_counter(ifp, IFCOUNTER_OERRORS, 1);
  return (ENOBUFS);
 }
 if_inc_counter(ifp, IFCOUNTER_OPACKETS, 1);
 return (0);
}
