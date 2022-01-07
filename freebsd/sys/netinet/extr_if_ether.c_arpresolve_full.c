
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_char ;
struct sockaddr {int dummy; } ;
struct mbuf {struct mbuf* m_nextpkt; } ;
struct llentry {int la_flags; scalar_t__ la_expire; char* ll_addr; char* r_linkdata; int r_hdrlen; scalar_t__ la_asked; scalar_t__ la_numheld; int lle_timer; struct mbuf* la_hold; } ;
struct ifnet {int if_flags; int if_addrlen; } ;
struct TYPE_2__ {int sin_addr; } ;


 int ARPSTAT_INC (int ) ;
 int EHOSTDOWN ;
 int EHOSTUNREACH ;
 int EINVAL ;
 int EWOULDBLOCK ;
 int IFF_NOARP ;
 int IFF_STATICARP ;
 int IF_AFDATA_WLOCK (struct ifnet*) ;
 int IF_AFDATA_WUNLOCK (struct ifnet*) ;
 int INET_ADDRSTRLEN ;
 int LLE_ADDREF (struct llentry*) ;
 int LLE_ADDRONLY ;
 int LLE_CREATE ;
 int LLE_EXCLUSIVE ;
 int LLE_IFADDR ;
 int LLE_REMREF (struct llentry*) ;
 int LLE_STATIC ;
 int LLE_VALID ;
 int LLE_WLOCK (struct llentry*) ;
 int LLE_WUNLOCK (struct llentry*) ;
 int LLTABLE (struct ifnet*) ;
 int LOG_DEBUG ;
 int NET_EPOCH_ASSERT () ;
 TYPE_1__* SIN (struct sockaddr const*) ;
 scalar_t__ V_arp_maxhold ;
 scalar_t__ V_arp_maxtries ;
 int V_arpt_down ;
 int arprequest_internal (struct ifnet*,int *,int *,int *) ;
 int arptimer ;
 int bcopy (char*,int *,int) ;
 int callout_reset (int *,int,int ,struct llentry*) ;
 int dropped ;
 int hz ;
 int if_name (struct ifnet*) ;
 int inet_ntoa_r (int ,char*) ;
 struct llentry* lla_lookup (int ,int ,struct sockaddr const*) ;
 int llentry_mark_used (struct llentry*) ;
 struct llentry* lltable_alloc_entry (int ,int ,struct sockaddr const*) ;
 int lltable_free_entry (int ,struct llentry*) ;
 int lltable_link_entry (int ,struct llentry*) ;
 int log (int ,char*,int ,int ) ;
 int m_freem (struct mbuf*) ;
 scalar_t__ time_uptime ;

__attribute__((used)) static int
arpresolve_full(struct ifnet *ifp, int is_gw, int flags, struct mbuf *m,
 const struct sockaddr *dst, u_char *desten, uint32_t *pflags,
 struct llentry **plle)
{
 struct llentry *la = ((void*)0), *la_tmp;
 struct mbuf *curr = ((void*)0);
 struct mbuf *next = ((void*)0);
 int error, renew;
 char *lladdr;
 int ll_len;

 NET_EPOCH_ASSERT();

 if (pflags != ((void*)0))
  *pflags = 0;
 if (plle != ((void*)0))
  *plle = ((void*)0);

 if ((flags & LLE_CREATE) == 0)
  la = lla_lookup(LLTABLE(ifp), LLE_EXCLUSIVE, dst);
 if (la == ((void*)0) && (ifp->if_flags & (IFF_NOARP | IFF_STATICARP)) == 0) {
  la = lltable_alloc_entry(LLTABLE(ifp), 0, dst);
  if (la == ((void*)0)) {
   char addrbuf[INET_ADDRSTRLEN];

   log(LOG_DEBUG,
       "arpresolve: can't allocate llinfo for %s on %s\n",
       inet_ntoa_r(SIN(dst)->sin_addr, addrbuf),
       if_name(ifp));
   m_freem(m);
   return (EINVAL);
  }

  IF_AFDATA_WLOCK(ifp);
  LLE_WLOCK(la);
  la_tmp = lla_lookup(LLTABLE(ifp), LLE_EXCLUSIVE, dst);

  if (la_tmp == ((void*)0))
   lltable_link_entry(LLTABLE(ifp), la);
  IF_AFDATA_WUNLOCK(ifp);
  if (la_tmp != ((void*)0)) {
   lltable_free_entry(LLTABLE(ifp), la);
   la = la_tmp;
  }
 }
 if (la == ((void*)0)) {
  m_freem(m);
  return (EINVAL);
 }

 if ((la->la_flags & LLE_VALID) &&
     ((la->la_flags & LLE_STATIC) || la->la_expire > time_uptime)) {
  if (flags & LLE_ADDRONLY) {
   lladdr = la->ll_addr;
   ll_len = ifp->if_addrlen;
  } else {
   lladdr = la->r_linkdata;
   ll_len = la->r_hdrlen;
  }
  bcopy(lladdr, desten, ll_len);


  llentry_mark_used(la);
  if (pflags != ((void*)0))
   *pflags = la->la_flags & (LLE_VALID|LLE_IFADDR);
  if (plle) {
   LLE_ADDREF(la);
   *plle = la;
  }
  LLE_WUNLOCK(la);
  return (0);
 }

 renew = (la->la_asked == 0 || la->la_expire != time_uptime);






 if (m != ((void*)0)) {
  if (la->la_numheld >= V_arp_maxhold) {
   if (la->la_hold != ((void*)0)) {
    next = la->la_hold->m_nextpkt;
    m_freem(la->la_hold);
    la->la_hold = next;
    la->la_numheld--;
    ARPSTAT_INC(dropped);
   }
  }
  if (la->la_hold != ((void*)0)) {
   curr = la->la_hold;
   while (curr->m_nextpkt != ((void*)0))
    curr = curr->m_nextpkt;
   curr->m_nextpkt = m;
  } else
   la->la_hold = m;
  la->la_numheld++;
 }






 if (la->la_asked < V_arp_maxtries)
  error = EWOULDBLOCK;
 else
  error = is_gw != 0 ? EHOSTUNREACH : EHOSTDOWN;

 if (renew) {
  int canceled, e;

  LLE_ADDREF(la);
  la->la_expire = time_uptime;
  canceled = callout_reset(&la->lle_timer, hz * V_arpt_down,
      arptimer, la);
  if (canceled)
   LLE_REMREF(la);
  la->la_asked++;
  LLE_WUNLOCK(la);
  e = arprequest_internal(ifp, ((void*)0), &SIN(dst)->sin_addr, ((void*)0));




  if (e != 0)
   return (e);
  return (error);
 }

 LLE_WUNLOCK(la);
 return (error);
}
