
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rm_priotracker {int dummy; } ;
struct TYPE_2__ {int len; struct ifnet* rcvif; } ;
struct mbuf {struct mbuf* m_nextpkt; TYPE_1__ m_pkthdr; } ;
struct ifnet {size_t if_index; int if_capenable; int (* if_input ) (struct ifnet*,struct mbuf*) ;} ;


 int ETHER_BPF_MTAP (struct ifnet*,struct mbuf*) ;
 int IFCAP_HWSTATS ;
 int IFCOUNTER_IBYTES ;
 int IFCOUNTER_IPACKETS ;
 struct ifnet** hn_vfmap ;
 int hn_vfmap_lock ;
 size_t hn_vfmap_size ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int m_freem (struct mbuf*) ;
 int rm_rlock (int *,struct rm_priotracker*) ;
 int rm_runlock (int *,struct rm_priotracker*) ;
 int stub1 (struct ifnet*,struct mbuf*) ;

__attribute__((used)) static void
hn_xpnt_vf_input(struct ifnet *vf_ifp, struct mbuf *m)
{
 struct rm_priotracker pt;
 struct ifnet *hn_ifp = ((void*)0);
 struct mbuf *mn;




 rm_rlock(&hn_vfmap_lock, &pt);
 if (vf_ifp->if_index < hn_vfmap_size)
  hn_ifp = hn_vfmap[vf_ifp->if_index];
 rm_runlock(&hn_vfmap_lock, &pt);

 if (hn_ifp != ((void*)0)) {
  for (mn = m; mn != ((void*)0); mn = mn->m_nextpkt) {



   ETHER_BPF_MTAP(vf_ifp, mn);




   if ((vf_ifp->if_capenable & IFCAP_HWSTATS) == 0) {
    if_inc_counter(vf_ifp, IFCOUNTER_IBYTES,
        mn->m_pkthdr.len);
   }
   mn->m_pkthdr.rcvif = hn_ifp;
   if_inc_counter(hn_ifp, IFCOUNTER_IPACKETS, 1);
  }



  hn_ifp->if_input(hn_ifp, m);
 } else {




  while (m != ((void*)0)) {
   mn = m->m_nextpkt;
   m->m_nextpkt = ((void*)0);
   m_freem(m);
   m = mn;
  }
 }
}
