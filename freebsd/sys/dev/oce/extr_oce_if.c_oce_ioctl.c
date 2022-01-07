
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef int uint32_t ;
typedef int u_long ;
struct ifreq {int ifr_reqcap; int ifr_mtu; } ;
struct ifnet {int if_flags; int if_drv_flags; int if_capenable; int if_hwassist; int if_mtu; TYPE_2__* if_softc; } ;
struct ifi2creq {int len; size_t offset; int * data; int dev_addr; } ;
typedef int i2c ;
typedef scalar_t__ caddr_t ;
struct TYPE_11__ {int enable_hwlro; int dev; int promisc; int dev_lock; TYPE_1__* ifp; int media; } ;
struct TYPE_10__ {int if_drv_flags; } ;
typedef TYPE_2__* POCE_SOFTC ;


 int CSUM_IP ;
 int CSUM_TCP ;
 int CSUM_TSO ;
 int CSUM_UDP ;
 int EAGAIN ;
 int EINVAL ;
 int FALSE ;
 int IFCAP_LRO ;
 int IFCAP_RXCSUM ;
 int IFCAP_TSO ;
 int IFCAP_TSO4 ;
 int IFCAP_TXCSUM ;
 int IFCAP_VLAN_HWFILTER ;
 int IFCAP_VLAN_HWTAGGING ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int IFF_PROMISC ;
 int IFF_UP ;
 int LOCK (int *) ;
 int OCE_MAX_MTU ;
 int PAGE_NUM_A0 ;
 int PAGE_NUM_A2 ;
 size_t TRANSCEIVER_A0_SIZE ;
 int TRUE ;
 int UNLOCK (int *) ;
 int copyin (int ,struct ifi2creq*,int) ;
 int copyout (struct ifi2creq*,int ,int) ;
 int device_printf (int ,char*) ;
 int ether_ioctl (struct ifnet*,int,scalar_t__) ;
 int if_printf (struct ifnet*,char*) ;
 int ifmedia_ioctl (struct ifnet*,struct ifreq*,int *,int) ;
 int ifr_data_get_ptr (struct ifreq*) ;
 int memcpy (int *,int *,int) ;
 int oce_handle_passthrough (struct ifnet*,scalar_t__) ;
 int oce_hw_update_multicast (TYPE_2__*) ;
 int oce_if_deactivate (TYPE_2__*) ;
 int oce_init (TYPE_2__*) ;
 int oce_mbox_nic_set_iface_lro_config (TYPE_2__*,int) ;
 int oce_mbox_read_transrecv_data (TYPE_2__*,int ) ;
 int oce_rxf_set_promiscuous (TYPE_2__*,int) ;
 int oce_vid_config (TYPE_2__*) ;
 int * sfp_vpd_dump_buffer ;

__attribute__((used)) static int
oce_ioctl(struct ifnet *ifp, u_long command, caddr_t data)
{
 struct ifreq *ifr = (struct ifreq *)data;
 POCE_SOFTC sc = ifp->if_softc;
 struct ifi2creq i2c;
 uint8_t offset = 0;
 int rc = 0;
 uint32_t u;

 switch (command) {

 case 132:
  rc = ifmedia_ioctl(ifp, ifr, &sc->media, command);
  break;

 case 128:
  if (ifr->ifr_mtu > OCE_MAX_MTU)
   rc = EINVAL;
  else
   ifp->if_mtu = ifr->ifr_mtu;
  break;

 case 129:
  if (ifp->if_flags & IFF_UP) {
   if (!(ifp->if_drv_flags & IFF_DRV_RUNNING)) {
    sc->ifp->if_drv_flags |= IFF_DRV_RUNNING;
    oce_init(sc);
   }
   device_printf(sc->dev, "Interface Up\n");
  } else {
   LOCK(&sc->dev_lock);

   sc->ifp->if_drv_flags &=
       ~(IFF_DRV_RUNNING | IFF_DRV_OACTIVE);
   oce_if_deactivate(sc);

   UNLOCK(&sc->dev_lock);

   device_printf(sc->dev, "Interface Down\n");
  }

  if ((ifp->if_flags & IFF_PROMISC) && !sc->promisc) {
   if (!oce_rxf_set_promiscuous(sc, (1 | (1 << 1))))
    sc->promisc = TRUE;
  } else if (!(ifp->if_flags & IFF_PROMISC) && sc->promisc) {
   if (!oce_rxf_set_promiscuous(sc, 0))
    sc->promisc = FALSE;
  }

  break;

 case 135:
 case 134:
  rc = oce_hw_update_multicast(sc);
  if (rc)
   device_printf(sc->dev,
    "Update multicast address failed\n");
  break;

 case 130:
  u = ifr->ifr_reqcap ^ ifp->if_capenable;

  if (u & IFCAP_TXCSUM) {
   ifp->if_capenable ^= IFCAP_TXCSUM;
   ifp->if_hwassist ^= (CSUM_TCP | CSUM_UDP | CSUM_IP);

   if (IFCAP_TSO & ifp->if_capenable &&
       !(IFCAP_TXCSUM & ifp->if_capenable)) {
    ifp->if_capenable &= ~IFCAP_TSO;
    ifp->if_hwassist &= ~CSUM_TSO;
    if_printf(ifp,
      "TSO disabled due to -txcsum.\n");
   }
  }

  if (u & IFCAP_RXCSUM)
   ifp->if_capenable ^= IFCAP_RXCSUM;

  if (u & IFCAP_TSO4) {
   ifp->if_capenable ^= IFCAP_TSO4;

   if (IFCAP_TSO & ifp->if_capenable) {
    if (IFCAP_TXCSUM & ifp->if_capenable)
     ifp->if_hwassist |= CSUM_TSO;
    else {
     ifp->if_capenable &= ~IFCAP_TSO;
     ifp->if_hwassist &= ~CSUM_TSO;
     if_printf(ifp,
         "Enable txcsum first.\n");
     rc = EAGAIN;
    }
   } else
    ifp->if_hwassist &= ~CSUM_TSO;
  }

  if (u & IFCAP_VLAN_HWTAGGING)
   ifp->if_capenable ^= IFCAP_VLAN_HWTAGGING;

  if (u & IFCAP_VLAN_HWFILTER) {
   ifp->if_capenable ^= IFCAP_VLAN_HWFILTER;
   oce_vid_config(sc);
  }
  break;

 case 133:
  rc = copyin(ifr_data_get_ptr(ifr), &i2c, sizeof(i2c));
  if (rc)
   break;

  if (i2c.dev_addr != PAGE_NUM_A0 &&
      i2c.dev_addr != PAGE_NUM_A2) {
   rc = EINVAL;
   break;
  }

  if (i2c.len > sizeof(i2c.data)) {
   rc = EINVAL;
   break;
  }

  rc = oce_mbox_read_transrecv_data(sc, i2c.dev_addr);
  if(rc) {
   rc = -rc;
   break;
  }

  if (i2c.dev_addr == PAGE_NUM_A0)
   offset = i2c.offset;
  else
   offset = TRANSCEIVER_A0_SIZE + i2c.offset;

  memcpy(&i2c.data[0], &sfp_vpd_dump_buffer[offset], i2c.len);

  rc = copyout(&i2c, ifr_data_get_ptr(ifr), sizeof(i2c));
  break;

 case 131:
  rc = oce_handle_passthrough(ifp, data);
  break;
 default:
  rc = ether_ioctl(ifp, command, data);
  break;
 }

 return rc;
}
