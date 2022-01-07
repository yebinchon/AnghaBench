
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct ifnet {int if_drv_flags; TYPE_2__* if_softc; } ;
typedef TYPE_2__* priv_p ;
struct TYPE_4__ {int hook; } ;


 int BPF_MTAP (struct ifnet*,struct mbuf*) ;
 int IFF_DRV_OACTIVE ;
 int NG_SEND_DATA_ONLY (int,int ,struct mbuf*) ;
 struct mbuf* sppp_dequeue (struct ifnet*) ;

__attribute__((used)) static void
ng_sppp_start (struct ifnet *ifp)
{
 struct mbuf *m;
 int len, error = 0;
 priv_p priv = ifp->if_softc;
 if (ifp->if_drv_flags & IFF_DRV_OACTIVE)
  return;

 if (!priv->hook)
  return;

 ifp->if_drv_flags |= IFF_DRV_OACTIVE;

 while ((m = sppp_dequeue (ifp)) != ((void*)0)) {
  BPF_MTAP (ifp, m);
  len = m->m_pkthdr.len;

  NG_SEND_DATA_ONLY (error, priv->hook, m);

  if (error) {
   ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;
   return;
  }
 }
 ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;
}
