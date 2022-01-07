
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct msk_softc {int msk_pflags; scalar_t__ msk_hw_id; struct msk_if_softc** msk_if; int msk_mtx; } ;
struct msk_mii_data {int port; int mii_flags; } ;
struct msk_if_softc {int msk_port; int msk_flags; int * msk_if_dev; int msk_miibus; struct ifnet* msk_ifp; struct msk_softc* msk_softc; int msk_tick_ch; int msk_rxq; int msk_txsq; int msk_txq; } ;
struct TYPE_3__ {scalar_t__ ifq_drv_maxlen; } ;
struct ifnet {int if_flags; int if_capabilities; int if_hwassist; int if_capenable; int if_hdrlen; TYPE_1__ if_snd; int if_init; int if_start; int if_ioctl; struct msk_if_softc* if_softc; } ;
struct ether_vlan_header {int dummy; } ;
typedef int * device_t ;


 scalar_t__ B2_MAC_1 ;
 int BMSR_DEFCAPMASK ;
 scalar_t__ CHIP_ID_YUKON_XL ;
 int CSR_READ_1 (struct msk_softc*,scalar_t__) ;
 int CSUM_TSO ;
 int EINVAL ;
 int ENOSPC ;
 int ENXIO ;
 int ETHER_ADDR_LEN ;
 int IFCAP_RXCSUM ;
 int IFCAP_TSO4 ;
 int IFCAP_TXCSUM ;
 int IFCAP_VLAN_HWCSUM ;
 int IFCAP_VLAN_HWTAGGING ;
 int IFCAP_VLAN_HWTSO ;
 int IFCAP_VLAN_MTU ;
 int IFF_BROADCAST ;
 int IFF_MULTICAST ;
 int IFF_SIMPLEX ;
 int IFQ_SET_MAXLEN (TYPE_1__*,scalar_t__) ;
 int IFQ_SET_READY (TYPE_1__*) ;
 int IFT_ETHER ;
 int MII_OFFSET_ANY ;
 int MSK_CSUM_FEATURES ;
 int MSK_FLAG_DESCV2 ;
 int MSK_FLAG_NOHWVLAN ;
 int MSK_FLAG_NORX_CSUM ;
 int MSK_IF_LOCK (struct msk_if_softc*) ;
 int MSK_IF_UNLOCK (struct msk_if_softc*) ;
 int MSK_PORT_A ;
 scalar_t__ MSK_TX_RING_CNT ;
 int PHY_ADDR_MARV ;
 int Q_R1 ;
 int Q_R2 ;
 int Q_XA1 ;
 int Q_XA2 ;
 int Q_XS1 ;
 int Q_XS2 ;
 int callout_init_mtx (int *,int *,int ) ;
 struct msk_mii_data* device_get_ivars (int *) ;
 int device_get_name (int *) ;
 int * device_get_parent (int *) ;
 void* device_get_softc (int *) ;
 int device_get_unit (int *) ;
 int device_printf (int *,char*) ;
 int ether_ifattach (struct ifnet*,int *) ;
 int ether_ifdetach (struct ifnet*) ;
 struct ifnet* if_alloc (int ) ;
 int if_initname (struct ifnet*,int ,int ) ;
 int mii_attach (int *,int *,struct ifnet*,int ,int ,int ,int ,int ,int ) ;
 int msk_detach (int *) ;
 int msk_init ;
 int msk_ioctl ;
 int msk_mediachange ;
 int msk_mediastatus ;
 int msk_rx_dma_jalloc (struct msk_if_softc*) ;
 int msk_start ;
 int msk_sysctl_node (struct msk_if_softc*) ;
 int msk_txrx_dma_alloc (struct msk_if_softc*) ;

__attribute__((used)) static int
msk_attach(device_t dev)
{
 struct msk_softc *sc;
 struct msk_if_softc *sc_if;
 struct ifnet *ifp;
 struct msk_mii_data *mmd;
 int i, port, error;
 uint8_t eaddr[6];

 if (dev == ((void*)0))
  return (EINVAL);

 error = 0;
 sc_if = device_get_softc(dev);
 sc = device_get_softc(device_get_parent(dev));
 mmd = device_get_ivars(dev);
 port = mmd->port;

 sc_if->msk_if_dev = dev;
 sc_if->msk_port = port;
 sc_if->msk_softc = sc;
 sc_if->msk_flags = sc->msk_pflags;
 sc->msk_if[port] = sc_if;

 if (port == MSK_PORT_A) {
  sc_if->msk_txq = Q_XA1;
  sc_if->msk_txsq = Q_XS1;
  sc_if->msk_rxq = Q_R1;
 } else {
  sc_if->msk_txq = Q_XA2;
  sc_if->msk_txsq = Q_XS2;
  sc_if->msk_rxq = Q_R2;
 }

 callout_init_mtx(&sc_if->msk_tick_ch, &sc_if->msk_softc->msk_mtx, 0);
 msk_sysctl_node(sc_if);

 if ((error = msk_txrx_dma_alloc(sc_if)) != 0)
  goto fail;
 msk_rx_dma_jalloc(sc_if);

 ifp = sc_if->msk_ifp = if_alloc(IFT_ETHER);
 if (ifp == ((void*)0)) {
  device_printf(sc_if->msk_if_dev, "can not if_alloc()\n");
  error = ENOSPC;
  goto fail;
 }
 ifp->if_softc = sc_if;
 if_initname(ifp, device_get_name(dev), device_get_unit(dev));
 ifp->if_flags = IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST;
 ifp->if_capabilities = IFCAP_TXCSUM | IFCAP_TSO4;




 if ((sc_if->msk_flags & MSK_FLAG_DESCV2) == 0 &&
     sc->msk_hw_id != CHIP_ID_YUKON_XL)
  ifp->if_capabilities |= IFCAP_RXCSUM;
 if ((sc_if->msk_flags & MSK_FLAG_DESCV2) != 0 &&
     (sc_if->msk_flags & MSK_FLAG_NORX_CSUM) == 0)
  ifp->if_capabilities |= IFCAP_RXCSUM;
 ifp->if_hwassist = MSK_CSUM_FEATURES | CSUM_TSO;
 ifp->if_capenable = ifp->if_capabilities;
 ifp->if_ioctl = msk_ioctl;
 ifp->if_start = msk_start;
 ifp->if_init = msk_init;
 IFQ_SET_MAXLEN(&ifp->if_snd, MSK_TX_RING_CNT - 1);
 ifp->if_snd.ifq_drv_maxlen = MSK_TX_RING_CNT - 1;
 IFQ_SET_READY(&ifp->if_snd);
 MSK_IF_LOCK(sc_if);
 for (i = 0; i < ETHER_ADDR_LEN; i++)
  eaddr[i] = CSR_READ_1(sc, B2_MAC_1 + (port * 8) + i);




 MSK_IF_UNLOCK(sc_if);
 ether_ifattach(ifp, eaddr);
 MSK_IF_LOCK(sc_if);


 ifp->if_capabilities |= IFCAP_VLAN_MTU;
 if ((sc_if->msk_flags & MSK_FLAG_NOHWVLAN) == 0) {






  ifp->if_capabilities |= IFCAP_VLAN_HWTAGGING | IFCAP_VLAN_HWTSO;




  if ((sc_if->msk_flags & MSK_FLAG_DESCV2) != 0 &&
      (sc_if->msk_flags & MSK_FLAG_NORX_CSUM) == 0)
   ifp->if_capabilities |= IFCAP_VLAN_HWCSUM;
 }
 ifp->if_capenable = ifp->if_capabilities;




 if ((sc_if->msk_flags & MSK_FLAG_DESCV2) == 0)
  ifp->if_capenable &= ~IFCAP_RXCSUM;






        ifp->if_hdrlen = sizeof(struct ether_vlan_header);




 MSK_IF_UNLOCK(sc_if);
 error = mii_attach(dev, &sc_if->msk_miibus, ifp, msk_mediachange,
     msk_mediastatus, BMSR_DEFCAPMASK, PHY_ADDR_MARV, MII_OFFSET_ANY,
     mmd->mii_flags);
 if (error != 0) {
  device_printf(sc_if->msk_if_dev, "attaching PHYs failed\n");
  ether_ifdetach(ifp);
  error = ENXIO;
  goto fail;
 }

fail:
 if (error != 0) {

  sc->msk_if[port] = ((void*)0);
  msk_detach(dev);
 }

 return (error);
}
