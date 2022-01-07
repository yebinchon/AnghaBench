
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_char ;
struct sockaddr_in6 {int sin6_addr; } ;
struct sockaddr {int dummy; } ;
struct mbuf {int m_flags; } ;
struct llentry {int r_flags; scalar_t__ r_skip_req; int lle_hittime; int r_hdrlen; int r_linkdata; } ;
struct ifnet {int if_type; } ;
struct TYPE_2__ {int flags; } ;


 int EAFNOSUPPORT ;
 int ENETDOWN ;
 int ETHER_MAP_IPV6_MULTICAST (int *,int *) ;



 int LLE_ADDREF (struct llentry*) ;
 int LLE_EXCLUSIVE ;
 int LLE_REQ_LOCK (struct llentry*) ;
 int LLE_REQ_UNLOCK (struct llentry*) ;
 int LLE_UNLOCKED ;
 int LLE_VALID ;
 int LLE_WUNLOCK (struct llentry*) ;
 int M_MCAST ;
 int ND6_IFF_IFDISABLED ;
 TYPE_1__* ND_IFINFO (struct ifnet*) ;
 int NET_EPOCH_ASSERT () ;
 int RLLE_IFADDR ;
 int RLLE_VALID ;
 int bcopy (int ,int *,int ) ;
 int m_freem (struct mbuf*) ;
 struct llentry* nd6_lookup (int *,int ,struct ifnet*) ;
 int nd6_resolve_slow (struct ifnet*,int ,struct mbuf*,struct sockaddr_in6 const*,int *,int*,struct llentry**) ;
 int time_uptime ;

int
nd6_resolve(struct ifnet *ifp, int is_gw, struct mbuf *m,
    const struct sockaddr *sa_dst, u_char *desten, uint32_t *pflags,
    struct llentry **plle)
{
 struct llentry *ln = ((void*)0);
 const struct sockaddr_in6 *dst6;

 NET_EPOCH_ASSERT();

 if (pflags != ((void*)0))
  *pflags = 0;

 dst6 = (const struct sockaddr_in6 *)sa_dst;


 if ((ND_IFINFO(ifp)->flags & ND6_IFF_IFDISABLED)) {
  m_freem(m);
  return (ENETDOWN);
 }

 if (m != ((void*)0) && m->m_flags & M_MCAST) {
  switch (ifp->if_type) {
  case 129:
  case 128:
  case 130:
   ETHER_MAP_IPV6_MULTICAST(&dst6->sin6_addr,
       desten);
   return (0);
  default:
   m_freem(m);
   return (EAFNOSUPPORT);
  }
 }

 ln = nd6_lookup(&dst6->sin6_addr, plle ? LLE_EXCLUSIVE : LLE_UNLOCKED,
     ifp);
 if (ln != ((void*)0) && (ln->r_flags & RLLE_VALID) != 0) {

  bcopy(ln->r_linkdata, desten, ln->r_hdrlen);
  if (pflags != ((void*)0))
   *pflags = LLE_VALID | (ln->r_flags & RLLE_IFADDR);

  if (ln->r_skip_req != 0) {
   LLE_REQ_LOCK(ln);
   ln->r_skip_req = 0;
   ln->lle_hittime = time_uptime;
   LLE_REQ_UNLOCK(ln);
  }
  if (plle) {
   LLE_ADDREF(ln);
   *plle = ln;
   LLE_WUNLOCK(ln);
  }
  return (0);
 } else if (plle && ln)
  LLE_WUNLOCK(ln);

 return (nd6_resolve_slow(ifp, 0, m, dst6, desten, pflags, plle));
}
