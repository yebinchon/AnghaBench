
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct port_info {int port_id; int media; int hw_addr; struct ifnet* ifp; int link_check_task; int link_check_ch; int lockbuf; struct adapter* adapter; } ;
struct ifnet {int if_flags; int if_capabilities; int if_capenable; int if_hwassist; int if_mtu; int if_get_counter; int if_qflush; int if_transmit; int if_ioctl; struct port_info* if_softc; int if_init; } ;
struct TYPE_2__ {int nports; } ;
struct adapter {TYPE_1__ params; } ;
typedef int device_t ;


 int CSUM_IP ;
 int CSUM_TCP ;
 int CSUM_TCP_IPV6 ;
 int CSUM_TSO ;
 int CSUM_UDP ;
 int CSUM_UDP_IPV6 ;
 int CXGB_CAP ;
 int CXGB_CAP_ENABLE ;
 int DEBUGNET_SET (struct ifnet*,int ) ;
 int ENOMEM ;
 int ETHERMTU_JUMBO ;
 int IFCAP_TOE4 ;
 int IFCAP_TSO ;
 int IFCAP_VLAN_HWTSO ;
 int IFF_BROADCAST ;
 int IFF_MULTICAST ;
 int IFF_SIMPLEX ;
 int IFM_IMASK ;
 int IFT_ETHER ;
 int PORT_LOCK_INIT (struct port_info*,int ) ;
 int PORT_NAME_LEN ;
 int TASK_INIT (int *,int ,int ,struct port_info*) ;
 int callout_init (int *,int) ;
 int check_link_status ;
 int cxgb ;
 int cxgb_build_medialist (struct port_info*) ;
 int cxgb_get_counter ;
 int cxgb_init ;
 int cxgb_ioctl ;
 int cxgb_makedev (struct port_info*) ;
 int cxgb_media_change ;
 int cxgb_media_status ;
 int cxgb_qflush ;
 int cxgb_transmit ;
 int device_get_name (int ) ;
 int device_get_parent (int ) ;
 struct port_info* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*) ;
 int ether_ifattach (struct ifnet*,int ) ;
 struct ifnet* if_alloc (int ) ;
 int if_initname (struct ifnet*,int ,int) ;
 int ifmedia_init (int *,int ,int ,int ) ;
 scalar_t__ is_offload (struct adapter*) ;
 int printf (char*,int) ;
 int snprintf (int ,int ,char*,int,int) ;
 int t3_sge_init_port (struct port_info*) ;

__attribute__((used)) static int
cxgb_port_attach(device_t dev)
{
 struct port_info *p;
 struct ifnet *ifp;
 int err;
 struct adapter *sc;

 p = device_get_softc(dev);
 sc = p->adapter;
 snprintf(p->lockbuf, PORT_NAME_LEN, "cxgb port lock %d:%d",
     device_get_unit(device_get_parent(dev)), p->port_id);
 PORT_LOCK_INIT(p, p->lockbuf);

 callout_init(&p->link_check_ch, 1);
 TASK_INIT(&p->link_check_task, 0, check_link_status, p);


 ifp = p->ifp = if_alloc(IFT_ETHER);
 if (ifp == ((void*)0)) {
  device_printf(dev, "Cannot allocate ifnet\n");
  return (ENOMEM);
 }

 if_initname(ifp, device_get_name(dev), device_get_unit(dev));
 ifp->if_init = cxgb_init;
 ifp->if_softc = p;
 ifp->if_flags = IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST;
 ifp->if_ioctl = cxgb_ioctl;
 ifp->if_transmit = cxgb_transmit;
 ifp->if_qflush = cxgb_qflush;
 ifp->if_get_counter = cxgb_get_counter;

 ifp->if_capabilities = CXGB_CAP;




 ifp->if_capenable = CXGB_CAP_ENABLE;
 ifp->if_hwassist = CSUM_TCP | CSUM_UDP | CSUM_IP | CSUM_TSO |
     CSUM_UDP_IPV6 | CSUM_TCP_IPV6;




 if (sc->params.nports > 2) {
  ifp->if_capabilities &= ~(IFCAP_TSO | IFCAP_VLAN_HWTSO);
  ifp->if_capenable &= ~(IFCAP_TSO | IFCAP_VLAN_HWTSO);
  ifp->if_hwassist &= ~CSUM_TSO;
 }

 ether_ifattach(ifp, p->hw_addr);


 DEBUGNET_SET(ifp, cxgb);





 if ((err = cxgb_makedev(p)) != 0) {
  printf("makedev failed %d\n", err);
  return (err);
 }


 ifmedia_init(&p->media, IFM_IMASK, cxgb_media_change,
     cxgb_media_status);
 cxgb_build_medialist(p);

 t3_sge_init_port(p);

 return (err);
}
