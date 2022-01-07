
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int len; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct ifnet {int if_snd; } ;


 int BPF_MTAP (struct ifnet*,struct mbuf*) ;
 int IFCOUNTER_OBYTES ;
 int IFCOUNTER_OPACKETS ;
 int IFQ_DEQUEUE (int *,struct mbuf*) ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int m_freem (struct mbuf*) ;

__attribute__((used)) static void
edsc_start(struct ifnet *ifp)
{
 struct mbuf *m;
 for (;;) {




  IFQ_DEQUEUE(&ifp->if_snd, m);
  if (m == ((void*)0))
   break;




  BPF_MTAP(ifp, m);




  if_inc_counter(ifp, IFCOUNTER_OBYTES, m->m_pkthdr.len);
  if_inc_counter(ifp, IFCOUNTER_OPACKETS, 1);





  m_freem(m);
 }





}
