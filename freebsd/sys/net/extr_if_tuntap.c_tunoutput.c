
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
typedef scalar_t__ u_int32_t ;
struct tuntap_softc {int tun_flags; } ;
struct sockaddr {scalar_t__ sa_family; int sa_len; struct sockaddr const* sa_data; } ;
struct route {int dummy; } ;
struct mbuf {scalar_t__* m_data; } ;
struct ifnet {int if_flags; int (* if_transmit ) (struct ifnet*,struct mbuf*) ;int if_bpf; struct tuntap_softc* if_softc; } ;
typedef int af ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_UNSPEC ;
 int EAFNOSUPPORT ;
 int EHOSTDOWN ;
 int ENOBUFS ;
 int IFCOUNTER_IQDROPS ;
 int IFCOUNTER_OERRORS ;
 int IFCOUNTER_OPACKETS ;
 int IFF_UP ;
 int M_NOWAIT ;
 int M_PREPEND (struct mbuf*,int,int ) ;
 int TUNDEBUG (struct ifnet*,char*,...) ;
 int TUN_IFHEAD ;
 int TUN_LMODE ;
 int TUN_LOCK (struct tuntap_softc*) ;
 int TUN_READY ;
 int TUN_UNLOCK (struct tuntap_softc*) ;
 int bcopy (struct sockaddr const*,scalar_t__*,int) ;
 int bpf_mtap2 (int ,scalar_t__*,int,struct mbuf*) ;
 scalar_t__ bpf_peers_present (int ) ;
 scalar_t__ htonl (scalar_t__) ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int m_freem (struct mbuf*) ;
 int mac_ifnet_check_transmit (struct ifnet*,struct mbuf*) ;
 int stub1 (struct ifnet*,struct mbuf*) ;

__attribute__((used)) static int
tunoutput(struct ifnet *ifp, struct mbuf *m0, const struct sockaddr *dst,
    struct route *ro)
{
 struct tuntap_softc *tp = ifp->if_softc;
 u_short cached_tun_flags;
 int error;
 u_int32_t af;

 TUNDEBUG (ifp, "tunoutput\n");
 TUN_LOCK(tp);
 cached_tun_flags = tp->tun_flags;
 TUN_UNLOCK(tp);
 if ((cached_tun_flags & TUN_READY) != TUN_READY) {
  TUNDEBUG (ifp, "not ready 0%o\n", tp->tun_flags);
  m_freem (m0);
  return (EHOSTDOWN);
 }

 if ((ifp->if_flags & IFF_UP) != IFF_UP) {
  m_freem (m0);
  return (EHOSTDOWN);
 }


 if (dst->sa_family == AF_UNSPEC)
  bcopy(dst->sa_data, &af, sizeof(af));
 else
  af = dst->sa_family;

 if (bpf_peers_present(ifp->if_bpf))
  bpf_mtap2(ifp->if_bpf, &af, sizeof(af), m0);


 if (cached_tun_flags & TUN_LMODE) {

  M_PREPEND(m0, dst->sa_len, M_NOWAIT);


  if (m0 == ((void*)0)) {
   if_inc_counter(ifp, IFCOUNTER_IQDROPS, 1);
   if_inc_counter(ifp, IFCOUNTER_OERRORS, 1);
   return (ENOBUFS);
  } else {
   bcopy(dst, m0->m_data, dst->sa_len);
  }
 }

 if (cached_tun_flags & TUN_IFHEAD) {

  M_PREPEND(m0, 4, M_NOWAIT);


  if (m0 == ((void*)0)) {
   if_inc_counter(ifp, IFCOUNTER_IQDROPS, 1);
   if_inc_counter(ifp, IFCOUNTER_OERRORS, 1);
   return (ENOBUFS);
  } else
   *(u_int32_t *)m0->m_data = htonl(af);
 } else {



  {
   m_freem(m0);
   return (EAFNOSUPPORT);
  }
 }

 error = (ifp->if_transmit)(ifp, m0);
 if (error)
  return (ENOBUFS);
 if_inc_counter(ifp, IFCOUNTER_OPACKETS, 1);
 return (0);
}
