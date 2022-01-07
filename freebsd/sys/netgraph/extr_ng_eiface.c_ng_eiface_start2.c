
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mbuf {int dummy; } ;
struct ifnet {int if_flags; int if_drv_flags; int if_snd; int if_softc; } ;
typedef TYPE_1__* priv_p ;
typedef int node_p ;
typedef int hook_p ;
struct TYPE_2__ {int ether; } ;


 int BPF_MTAP (struct ifnet*,struct mbuf*) ;
 int IFCOUNTER_IPACKETS ;
 int IFCOUNTER_OERRORS ;
 int IFCOUNTER_OPACKETS ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int IFF_MONITOR ;
 int IFF_UP ;
 int IF_DEQUEUE (int *,struct mbuf*) ;
 int NG_OUTBOUND_THREAD_REF () ;
 int NG_OUTBOUND_THREAD_UNREF () ;
 int NG_SEND_DATA_ONLY (int,int ,struct mbuf*) ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int m_freem (struct mbuf*) ;
 int m_tag_delete_chain (struct mbuf*,int *) ;

__attribute__((used)) static void
ng_eiface_start2(node_p node, hook_p hook, void *arg1, int arg2)
{
 struct ifnet *ifp = arg1;
 const priv_p priv = (priv_p)ifp->if_softc;
 int error = 0;
 struct mbuf *m;



 if (!((ifp->if_flags & IFF_UP) &&
     (ifp->if_drv_flags & IFF_DRV_RUNNING)))
  return;

 for (;;) {



  IF_DEQUEUE(&ifp->if_snd, m);


  if (m == ((void*)0))
   break;


  m_tag_delete_chain(m, ((void*)0));






  BPF_MTAP(ifp, m);

  if (ifp->if_flags & IFF_MONITOR) {
   if_inc_counter(ifp, IFCOUNTER_IPACKETS, 1);
   m_freem(m);
   continue;
  }





  NG_OUTBOUND_THREAD_REF();
  NG_SEND_DATA_ONLY(error, priv->ether, m);
  NG_OUTBOUND_THREAD_UNREF();


  if (error == 0)
   if_inc_counter(ifp, IFCOUNTER_OPACKETS, 1);
  else
   if_inc_counter(ifp, IFCOUNTER_OERRORS, 1);
 }

 ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;

 return;
}
