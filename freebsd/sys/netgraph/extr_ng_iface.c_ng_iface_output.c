
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct sockaddr {scalar_t__ sa_family; int sa_data; } ;
struct route {int dummy; } ;
struct mbuf {scalar_t__ m_data; } ;
struct ifnet {int if_flags; int if_drv_flags; int (* if_transmit ) (struct ifnet*,struct mbuf*) ;int if_snd; } ;
typedef scalar_t__ sa_family_t ;
typedef int af ;


 scalar_t__ AF_UNSPEC ;
 scalar_t__ ALTQ_IS_ENABLED (int *) ;
 int ENETDOWN ;
 int ENOBUFS ;
 int IFCOUNTER_OQDROPS ;
 int IFF_DRV_RUNNING ;
 int IFF_UP ;
 int M_NOWAIT ;
 int M_PREPEND (struct mbuf*,int,int ) ;
 int NGM_IFACE_COOKIE ;
 int V_ng_iface_max_nest ;
 int bcopy (int ,scalar_t__*,int) ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int if_tunnel_check_nesting (struct ifnet*,struct mbuf*,int ,int ) ;
 int m_freem (struct mbuf*) ;
 int ng_iface_bpftap (struct ifnet*,struct mbuf*,scalar_t__) ;
 int ng_iface_send (struct ifnet*,struct mbuf*,scalar_t__) ;
 int stub1 (struct ifnet*,struct mbuf*) ;

__attribute__((used)) static int
ng_iface_output(struct ifnet *ifp, struct mbuf *m,
 const struct sockaddr *dst, struct route *ro)
{
 uint32_t af;
 int error;


 if (!((ifp->if_flags & IFF_UP) &&
     (ifp->if_drv_flags & IFF_DRV_RUNNING))) {
  m_freem(m);
  return (ENETDOWN);
 }


 error = if_tunnel_check_nesting(ifp, m, NGM_IFACE_COOKIE,
     V_ng_iface_max_nest);
 if (error) {
  m_freem(m);
  return (error);
 }


 if (dst->sa_family == AF_UNSPEC)
  bcopy(dst->sa_data, &af, sizeof(af));
 else
  af = dst->sa_family;


 ng_iface_bpftap(ifp, m, af);

 if (ALTQ_IS_ENABLED(&ifp->if_snd)) {
  M_PREPEND(m, sizeof(sa_family_t), M_NOWAIT);
  if (m == ((void*)0)) {
   if_inc_counter(ifp, IFCOUNTER_OQDROPS, 1);
   return (ENOBUFS);
  }
  *(sa_family_t *)m->m_data = af;
  error = (ifp->if_transmit)(ifp, m);
 } else
  error = ng_iface_send(ifp, m, af);

 return (error);
}
