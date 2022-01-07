
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_char ;
struct sockaddr {int dummy; } ;
struct mbuf {int m_flags; } ;
struct llentry {int r_flags; int r_hdrlen; int r_linkdata; } ;
struct ifnet {int if_addrlen; int if_broadcastaddr; } ;
struct TYPE_2__ {int sin_addr; } ;


 int ETHER_MAP_IP_MULTICAST (int *,int *) ;
 int LLE_ADDREF (struct llentry*) ;
 int LLE_CREATE ;
 int LLE_EXCLUSIVE ;
 int LLE_UNLOCKED ;
 int LLE_VALID ;
 int LLE_WUNLOCK (struct llentry*) ;
 int LLTABLE (struct ifnet*) ;
 int M_BCAST ;
 int M_MCAST ;
 int NET_EPOCH_ASSERT () ;
 int RLLE_IFADDR ;
 int RLLE_VALID ;
 TYPE_1__* SIN (struct sockaddr const*) ;
 int arpresolve_full (struct ifnet*,int,int ,struct mbuf*,struct sockaddr const*,int *,int*,struct llentry**) ;
 int bcopy (int ,int *,int ) ;
 struct llentry* lla_lookup (int ,int ,struct sockaddr const*) ;
 int llentry_mark_used (struct llentry*) ;
 int memcpy (int *,int ,int ) ;

int
arpresolve(struct ifnet *ifp, int is_gw, struct mbuf *m,
 const struct sockaddr *dst, u_char *desten, uint32_t *pflags,
 struct llentry **plle)
{
 struct llentry *la = ((void*)0);

 NET_EPOCH_ASSERT();

 if (pflags != ((void*)0))
  *pflags = 0;
 if (plle != ((void*)0))
  *plle = ((void*)0);

 if (m != ((void*)0)) {
  if (m->m_flags & M_BCAST) {

   (void)memcpy(desten,
       ifp->if_broadcastaddr, ifp->if_addrlen);
   return (0);
  }
  if (m->m_flags & M_MCAST) {

   ETHER_MAP_IP_MULTICAST(&SIN(dst)->sin_addr, desten);
   return (0);
  }
 }

 la = lla_lookup(LLTABLE(ifp), plle ? LLE_EXCLUSIVE : LLE_UNLOCKED, dst);
 if (la != ((void*)0) && (la->r_flags & RLLE_VALID) != 0) {

  bcopy(la->r_linkdata, desten, la->r_hdrlen);
  if (pflags != ((void*)0))
   *pflags = LLE_VALID | (la->r_flags & RLLE_IFADDR);

  llentry_mark_used(la);
  if (plle) {
   LLE_ADDREF(la);
   *plle = la;
   LLE_WUNLOCK(la);
  }
  return (0);
 }
 if (plle && la)
  LLE_WUNLOCK(la);

 return (arpresolve_full(ifp, is_gw, la == ((void*)0) ? LLE_CREATE : 0, m, dst,
     desten, pflags, plle));
}
