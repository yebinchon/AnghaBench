
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct ifnet {int if_drv_flags; int * if_softc; } ;
typedef int cvm_oct_private_t ;


 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int cvm_oct_xmit (struct mbuf*,struct ifnet*) ;
 int m_freem (struct mbuf*) ;

__attribute__((used)) static int
octe_transmit(struct ifnet *ifp, struct mbuf *m)
{
 cvm_oct_private_t *priv;

 priv = ifp->if_softc;

 if ((ifp->if_drv_flags & (IFF_DRV_RUNNING | IFF_DRV_OACTIVE)) !=
     IFF_DRV_RUNNING) {
  m_freem(m);
  return (0);
 }

 return (cvm_oct_xmit(m, ifp));
}
