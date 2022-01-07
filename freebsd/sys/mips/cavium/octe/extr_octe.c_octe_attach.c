
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int ifq_drv_maxlen; int ifq_mtx; } ;
struct ifnet {int if_flags; int if_hdrlen; int if_capabilities; int if_capenable; int if_hwassist; TYPE_5__ if_snd; int if_transmit; int if_xname; int if_ioctl; int if_init; } ;
struct ether_vlan_header {int dummy; } ;
typedef int * device_t ;
struct TYPE_7__ {int phy_id; int if_flags; int mac; TYPE_5__* tx_free_queue; int tx_mtx; int media; int * miibus; int * phy_device; struct ifnet* ifp; } ;
typedef TYPE_1__ cvm_oct_private_t ;


 int BMSR_DEFCAPMASK ;
 int CSUM_TCP ;
 int CSUM_UDP ;
 int IFCAP_HWCSUM ;
 int IFCAP_VLAN_MTU ;
 int IFF_ALLMULTI ;
 int IFF_BROADCAST ;
 int IFF_MULTICAST ;
 int IFF_SIMPLEX ;
 int IFM_AUTO ;
 int IFM_ETHER ;
 int IFQ_SET_MAXLEN (TYPE_5__*,int ) ;
 int IFQ_SET_READY (TYPE_5__*) ;
 int MAX_OUT_QUEUE_DEPTH ;
 int MII_OFFSET_ANY ;
 int MTX_DEF ;
 int OCTE_TX_LOCK (TYPE_1__*) ;
 int OCTE_TX_UNLOCK (TYPE_1__*) ;
 int bus_generic_attach (int *) ;
 int * device_add_child (int *,int *,int) ;
 int device_get_name (int *) ;
 TYPE_1__* device_get_softc (int *) ;
 int device_get_unit (int *) ;
 int device_printf (int *,char*,...) ;
 int ether_ifattach (struct ifnet*,int ) ;
 int if_initname (struct ifnet*,int ,int ) ;
 int ifmedia_add (int *,int,int ,int *) ;
 int ifmedia_init (int *,int ,int ,int ) ;
 int ifmedia_set (int *,int) ;
 int mii_attach (int *,int **,struct ifnet*,int ,int ,int ,int,int ,int ) ;
 int mtx_init (int *,int ,char*,int ) ;
 int octe_init ;
 int octe_ioctl ;
 int octe_medchange ;
 int octe_medstat ;
 int octe_mii_medchange ;
 int octe_mii_medstat ;
 int octe_transmit ;

__attribute__((used)) static int
octe_attach(device_t dev)
{
 struct ifnet *ifp;
 cvm_oct_private_t *priv;
 device_t child;
 unsigned qos;
 int error;

 priv = device_get_softc(dev);
 ifp = priv->ifp;

 if_initname(ifp, device_get_name(dev), device_get_unit(dev));

 if (priv->phy_id != -1) {
  if (priv->phy_device == ((void*)0)) {
   error = mii_attach(dev, &priv->miibus, ifp,
       octe_mii_medchange, octe_mii_medstat,
       BMSR_DEFCAPMASK, priv->phy_id, MII_OFFSET_ANY, 0);
   if (error != 0)
    device_printf(dev, "attaching PHYs failed\n");
  } else {
   child = device_add_child(dev, priv->phy_device, -1);
   if (child == ((void*)0))
    device_printf(dev, "missing phy %u device %s\n", priv->phy_id, priv->phy_device);
  }
 }

 if (priv->miibus == ((void*)0)) {
  ifmedia_init(&priv->media, 0, octe_medchange, octe_medstat);

  ifmedia_add(&priv->media, IFM_ETHER | IFM_AUTO, 0, ((void*)0));
  ifmedia_set(&priv->media, IFM_ETHER | IFM_AUTO);
 }







 ifp->if_flags = IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST | IFF_ALLMULTI;
 ifp->if_init = octe_init;
 ifp->if_ioctl = octe_ioctl;

 priv->if_flags = ifp->if_flags;

 mtx_init(&priv->tx_mtx, ifp->if_xname, "octe tx send queue", MTX_DEF);

 for (qos = 0; qos < 16; qos++) {
  mtx_init(&priv->tx_free_queue[qos].ifq_mtx, ifp->if_xname, "octe tx free queue", MTX_DEF);
  IFQ_SET_MAXLEN(&priv->tx_free_queue[qos], MAX_OUT_QUEUE_DEPTH);
 }

 ether_ifattach(ifp, priv->mac);

 ifp->if_transmit = octe_transmit;

 ifp->if_hdrlen = sizeof(struct ether_vlan_header);
 ifp->if_capabilities = IFCAP_VLAN_MTU | IFCAP_HWCSUM;
 ifp->if_capenable = ifp->if_capabilities;
 ifp->if_hwassist = CSUM_TCP | CSUM_UDP;

 OCTE_TX_LOCK(priv);
 IFQ_SET_MAXLEN(&ifp->if_snd, MAX_OUT_QUEUE_DEPTH);
 ifp->if_snd.ifq_drv_maxlen = MAX_OUT_QUEUE_DEPTH;
 IFQ_SET_READY(&ifp->if_snd);
 OCTE_TX_UNLOCK(priv);

 return (bus_generic_attach(dev));
}
