
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int len; } ;
struct mbuf {int m_flags; TYPE_1__ m_pkthdr; } ;
struct ifqueue {int dummy; } ;
struct ifnet {int if_drv_flags; int (* if_start ) (struct ifnet*) ;} ;


 int IFCOUNTER_OBYTES ;
 int IFCOUNTER_OMCASTS ;
 int IFCOUNTER_OQDROPS ;
 int IFF_DRV_OACTIVE ;
 int IF_LOCK (struct ifqueue*) ;
 int IF_UNLOCK (struct ifqueue*) ;
 int M_BCAST ;
 int M_MCAST ;
 int _IF_ENQUEUE (struct ifqueue*,struct mbuf*) ;
 scalar_t__ _IF_QFULL (struct ifqueue*) ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int m_freem (struct mbuf*) ;
 int stub1 (struct ifnet*) ;

int
if_handoff(struct ifqueue *ifq, struct mbuf *m, struct ifnet *ifp, int adjust)
{
 int active = 0;

 IF_LOCK(ifq);
 if (_IF_QFULL(ifq)) {
  IF_UNLOCK(ifq);
  if_inc_counter(ifp, IFCOUNTER_OQDROPS, 1);
  m_freem(m);
  return (0);
 }
 if (ifp != ((void*)0)) {
  if_inc_counter(ifp, IFCOUNTER_OBYTES, m->m_pkthdr.len + adjust);
  if (m->m_flags & (M_BCAST|M_MCAST))
   if_inc_counter(ifp, IFCOUNTER_OMCASTS, 1);
  active = ifp->if_drv_flags & IFF_DRV_OACTIVE;
 }
 _IF_ENQUEUE(ifq, m);
 IF_UNLOCK(ifq);
 if (ifp != ((void*)0) && !active)
  (*(ifp)->if_start)(ifp);
 return (1);
}
