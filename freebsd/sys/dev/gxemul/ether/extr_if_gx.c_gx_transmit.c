
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int len; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct ifnet {int if_drv_flags; struct gx_softc* if_softc; } ;
struct gx_softc {int dummy; } ;


 int ETHER_BPF_MTAP (struct ifnet*,struct mbuf*) ;
 int GXEMUL_ETHER_DEV_BUFFER ;
 int GXEMUL_ETHER_DEV_COMMAND ;
 int GXEMUL_ETHER_DEV_COMMAND_TX ;
 scalar_t__ GXEMUL_ETHER_DEV_FUNCTION (int ) ;
 int GXEMUL_ETHER_DEV_LENGTH ;
 int GXEMUL_ETHER_DEV_WRITE (int ,int) ;
 int GXEMUL_ETHER_LOCK (struct gx_softc*) ;
 int GXEMUL_ETHER_UNLOCK (struct gx_softc*) ;
 int IFCOUNTER_OBYTES ;
 int IFCOUNTER_OPACKETS ;
 int IFF_DRV_RUNNING ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int m_copydata (struct mbuf*,int ,int,void*) ;
 int m_freem (struct mbuf*) ;

__attribute__((used)) static int
gx_transmit(struct ifnet *ifp, struct mbuf *m)
{
 struct gx_softc *sc;

 sc = ifp->if_softc;

 if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != IFF_DRV_RUNNING) {
  m_freem(m);
  return (0);
 }

 GXEMUL_ETHER_LOCK(sc);
 GXEMUL_ETHER_DEV_WRITE(GXEMUL_ETHER_DEV_LENGTH, m->m_pkthdr.len);
 m_copydata(m, 0, m->m_pkthdr.len, (void *)(uintptr_t)GXEMUL_ETHER_DEV_FUNCTION(GXEMUL_ETHER_DEV_BUFFER));
 GXEMUL_ETHER_DEV_WRITE(GXEMUL_ETHER_DEV_COMMAND, GXEMUL_ETHER_DEV_COMMAND_TX);
 GXEMUL_ETHER_UNLOCK(sc);

 ETHER_BPF_MTAP(ifp, m);

 if_inc_counter(ifp, IFCOUNTER_OPACKETS, 1);
 if_inc_counter(ifp, IFCOUNTER_OBYTES, m->m_pkthdr.len);

 m_freem(m);

 return (0);
}
