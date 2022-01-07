
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_family; } ;
struct route {int dummy; } ;
struct mbuf {int dummy; } ;
struct lagg_port {int (* lp_output ) (struct ifnet*,struct mbuf*,struct sockaddr const*,struct route*) ;} ;
struct ifnet {struct lagg_port* if_lagg; } ;



 int ENETDOWN ;
 int m_freem (struct mbuf*) ;

 int stub1 (struct ifnet*,struct mbuf*,struct sockaddr const*,struct route*) ;

__attribute__((used)) static int
lagg_port_output(struct ifnet *ifp, struct mbuf *m,
 const struct sockaddr *dst, struct route *ro)
{
 struct lagg_port *lp = ifp->if_lagg;

 switch (dst->sa_family) {
  case 128:
  case 129:
   return ((*lp->lp_output)(ifp, m, dst, ro));
 }


 m_freem(m);
 return (ENETDOWN);
}
