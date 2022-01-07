
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct octm_softc {int sc_port; } ;
struct TYPE_2__ {int len; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct ifnet {int if_drv_flags; struct octm_softc* if_softc; } ;
typedef int cvmx_mgmt_port_result_t ;






 int EDOOFUS ;
 int EIO ;
 int ENOBUFS ;
 int ENXIO ;
 int ETHER_BPF_MTAP (struct ifnet*,struct mbuf*) ;
 int IFCOUNTER_OBYTES ;
 int IFCOUNTER_OERRORS ;
 int IFCOUNTER_OPACKETS ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int cvmx_mgmt_port_sendm (int ,struct mbuf*) ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int m_freem (struct mbuf*) ;

__attribute__((used)) static int
octm_transmit(struct ifnet *ifp, struct mbuf *m)
{
 struct octm_softc *sc;
 cvmx_mgmt_port_result_t result;

 sc = ifp->if_softc;

 if ((ifp->if_drv_flags & (IFF_DRV_RUNNING | IFF_DRV_OACTIVE)) !=
     IFF_DRV_RUNNING) {
  m_freem(m);
  return (0);
 }

 result = cvmx_mgmt_port_sendm(sc->sc_port, m);

 if (result == 128) {
  ETHER_BPF_MTAP(ifp, m);

  if_inc_counter(ifp, IFCOUNTER_OPACKETS, 1);
  if_inc_counter(ifp, IFCOUNTER_OBYTES, m->m_pkthdr.len);
 } else
  if_inc_counter(ifp, IFCOUNTER_OERRORS, 1);

 m_freem(m);

 switch (result) {
 case 128:
  return (0);
 case 129:
  return (ENOBUFS);
 case 130:
  return (ENXIO);
 case 131:
  return (EIO);
 default:
  return (EDOOFUS);
 }
}
