
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
typedef int u_char ;
struct sis_softc {scalar_t__ sis_type; scalar_t__ sis_rev; int sis_srr; int sis_intrhand; int * sis_res; int sis_miibus; int sis_dev; struct ifnet* sis_ifp; int sis_mtx; int sis_stat_ch; } ;
struct TYPE_3__ {scalar_t__ ifq_drv_maxlen; } ;
struct ifnet {int if_flags; int if_hdrlen; int if_capabilities; int if_capenable; TYPE_1__ if_snd; int if_init; int if_start; int if_ioctl; struct sis_softc* if_softc; } ;
struct ether_vlan_header {int dummy; } ;
typedef int device_t ;
typedef int caddr_t ;


 int BMSR_DEFCAPMASK ;
 int CSR_READ_4 (struct sis_softc*,int ) ;
 int DELAY (int) ;
 int ENOSPC ;
 int ETHER_ADDR_LEN ;
 int IFCAP_POLLING ;
 int IFCAP_VLAN_MTU ;
 int IFCAP_WOL ;
 int IFCAP_WOL_MAGIC ;
 int IFF_BROADCAST ;
 int IFF_MULTICAST ;
 int IFF_SIMPLEX ;
 int IFQ_SET_MAXLEN (TYPE_1__*,scalar_t__) ;
 int IFQ_SET_READY (TYPE_1__*) ;
 int IFT_ETHER ;
 int INTR_MPSAFE ;
 int INTR_TYPE_NET ;
 int MII_OFFSET_ANY ;
 int MII_PHY_ANY ;
 int MTX_DEF ;
 int MTX_NETWORK_LOCK ;
 int NS_EE_NODEADDR ;
 int NS_SRR ;
 int NS_SRR_15C ;
 int NS_SRR_15D ;
 int NS_SRR_16A ;

 int PCIR_REVID ;
 int PCIY_PMG ;
 int SIO_SET (int ) ;
 int SIS_CFG_PERR_DETECT ;
 int SIS_CFG_RND_CNT ;
 scalar_t__ SIS_DEVICEID_7016 ;
 scalar_t__ SIS_DEVICEID_900 ;
 int SIS_EECMD_DONE ;
 int SIS_EECMD_GNT ;
 int SIS_EECMD_REQ ;
 int SIS_EECTL ;
 int SIS_EECTL_CLK ;
 int SIS_EE_NODEADDR ;
 scalar_t__ SIS_REV_630E ;
 scalar_t__ SIS_REV_630EA1 ;
 scalar_t__ SIS_REV_630ET ;
 scalar_t__ SIS_REV_630S ;
 scalar_t__ SIS_REV_635 ;
 scalar_t__ SIS_REV_900B ;
 scalar_t__ SIS_REV_96x ;
 int SIS_TIMEOUT ;
 scalar_t__ SIS_TX_LIST_CNT ;
 scalar_t__ SIS_TYPE_7016 ;
 scalar_t__ SIS_TYPE_83815 ;
 scalar_t__ SIS_TYPE_900 ;

 int bus_alloc_resources (int ,int ,int *) ;
 int bus_setup_intr (int ,int ,int,int *,int ,struct sis_softc*,int *) ;
 int callout_init_mtx (int *,int *,int ) ;
 int device_get_name (int ) ;
 int device_get_nameunit (int ) ;
 struct sis_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*,...) ;
 int ether_ifattach (struct ifnet*,int*) ;
 int ether_ifdetach (struct ifnet*) ;
 struct ifnet* if_alloc (int ) ;
 int if_initname (struct ifnet*,int ,int ) ;
 int mii_attach (int ,int *,struct ifnet*,int ,int ,int ,int ,int ,int ) ;
 int mtx_init (int *,int ,int ,int ) ;
 int pci_enable_busmaster (int ) ;
 scalar_t__ pci_find_cap (int ,int ,int*) ;
 scalar_t__ pci_get_device (int ) ;
 int pci_get_vendor (int ) ;
 scalar_t__ pci_read_config (int ,int ,int) ;
 int sis_add_sysctls (struct sis_softc*) ;
 int sis_detach (int ) ;
 int sis_dma_alloc (struct sis_softc*) ;
 int sis_eeprom_idle (struct sis_softc*) ;
 int sis_ifmedia_sts ;
 int sis_ifmedia_upd ;
 int sis_init ;
 int sis_intr ;
 int sis_ioctl ;
 int sis_read_cmos (struct sis_softc*,int ,int ,int,int) ;
 int sis_read_eeprom (struct sis_softc*,int ,int ,int,int ) ;
 int sis_read_mac (struct sis_softc*,int ,int ) ;
 int sis_res_spec ;
 int sis_reset (struct sis_softc*) ;
 int sis_reverse (int) ;
 int sis_start ;

__attribute__((used)) static int
sis_attach(device_t dev)
{
 u_char eaddr[ETHER_ADDR_LEN];
 struct sis_softc *sc;
 struct ifnet *ifp;
 int error = 0, pmc, waittime = 0;

 waittime = 0;
 sc = device_get_softc(dev);

 sc->sis_dev = dev;

 mtx_init(&sc->sis_mtx, device_get_nameunit(dev), MTX_NETWORK_LOCK,
     MTX_DEF);
 callout_init_mtx(&sc->sis_stat_ch, &sc->sis_mtx, 0);

 if (pci_get_device(dev) == SIS_DEVICEID_900)
  sc->sis_type = SIS_TYPE_900;
 if (pci_get_device(dev) == SIS_DEVICEID_7016)
  sc->sis_type = SIS_TYPE_7016;
 if (pci_get_vendor(dev) == 129)
  sc->sis_type = SIS_TYPE_83815;

 sc->sis_rev = pci_read_config(dev, PCIR_REVID, 1);



 pci_enable_busmaster(dev);

 error = bus_alloc_resources(dev, sis_res_spec, sc->sis_res);
 if (error) {
  device_printf(dev, "couldn't allocate resources\n");
  goto fail;
 }


 sis_reset(sc);

 if (sc->sis_type == SIS_TYPE_900 &&
     (sc->sis_rev == SIS_REV_635 ||
     sc->sis_rev == SIS_REV_900B)) {
  SIO_SET(SIS_CFG_RND_CNT);
  SIO_SET(SIS_CFG_PERR_DETECT);
 }




 switch (pci_get_vendor(dev)) {
 case 129:
  sc->sis_srr = CSR_READ_4(sc, NS_SRR);


  if (sc->sis_srr == NS_SRR_15C)
   device_printf(dev, "Silicon Revision: DP83815C\n");
  else if (sc->sis_srr == NS_SRR_15D)
   device_printf(dev, "Silicon Revision: DP83815D\n");
  else if (sc->sis_srr == NS_SRR_16A)
   device_printf(dev, "Silicon Revision: DP83816A\n");
  else
   device_printf(dev, "Silicon Revision %x\n", sc->sis_srr);
  {
   uint16_t tmp[4];

   sis_read_eeprom(sc, (caddr_t)&tmp,
       NS_EE_NODEADDR, 4, 0);


   tmp[3] = tmp[3] >> 1;
   tmp[3] |= tmp[2] << 15;
   tmp[2] = tmp[2] >> 1;
   tmp[2] |= tmp[1] << 15;
   tmp[1] = tmp[1] >> 1;
   tmp[1] |= tmp[0] << 15;


   tmp[3] = sis_reverse(tmp[3]);
   tmp[2] = sis_reverse(tmp[2]);
   tmp[1] = sis_reverse(tmp[1]);

   eaddr[0] = (tmp[1] >> 0) & 0xFF;
   eaddr[1] = (tmp[1] >> 8) & 0xFF;
   eaddr[2] = (tmp[2] >> 0) & 0xFF;
   eaddr[3] = (tmp[2] >> 8) & 0xFF;
   eaddr[4] = (tmp[3] >> 0) & 0xFF;
   eaddr[5] = (tmp[3] >> 8) & 0xFF;
  }
  break;
 case 128:
 default:
  if (sc->sis_rev == SIS_REV_630S ||
      sc->sis_rev == SIS_REV_630E ||
      sc->sis_rev == SIS_REV_630EA1)
   sis_read_cmos(sc, dev, (caddr_t)&eaddr, 0x9, 6);

  else if (sc->sis_rev == SIS_REV_635 ||
    sc->sis_rev == SIS_REV_630ET)
   sis_read_mac(sc, dev, (caddr_t)&eaddr);
  else if (sc->sis_rev == SIS_REV_96x) {




   SIO_SET(SIS_EECMD_REQ);
   for (waittime = 0; waittime < SIS_TIMEOUT;
       waittime++) {

    sis_eeprom_idle(sc);
    if (CSR_READ_4(sc, SIS_EECTL) & SIS_EECMD_GNT) {
     sis_read_eeprom(sc, (caddr_t)&eaddr,
         SIS_EE_NODEADDR, 3, 0);
     break;
    }
    DELAY(1);
   }




   SIO_SET(SIS_EECTL_CLK);

   SIO_SET(SIS_EECMD_DONE);
  } else

   sis_read_eeprom(sc, (caddr_t)&eaddr,
       SIS_EE_NODEADDR, 3, 0);
  break;
 }

 sis_add_sysctls(sc);


 if ((error = sis_dma_alloc(sc)) != 0)
  goto fail;

 ifp = sc->sis_ifp = if_alloc(IFT_ETHER);
 if (ifp == ((void*)0)) {
  device_printf(dev, "can not if_alloc()\n");
  error = ENOSPC;
  goto fail;
 }
 ifp->if_softc = sc;
 if_initname(ifp, device_get_name(dev), device_get_unit(dev));
 ifp->if_flags = IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST;
 ifp->if_ioctl = sis_ioctl;
 ifp->if_start = sis_start;
 ifp->if_init = sis_init;
 IFQ_SET_MAXLEN(&ifp->if_snd, SIS_TX_LIST_CNT - 1);
 ifp->if_snd.ifq_drv_maxlen = SIS_TX_LIST_CNT - 1;
 IFQ_SET_READY(&ifp->if_snd);

 if (pci_find_cap(sc->sis_dev, PCIY_PMG, &pmc) == 0) {
  if (sc->sis_type == SIS_TYPE_83815)
   ifp->if_capabilities |= IFCAP_WOL;
  else
   ifp->if_capabilities |= IFCAP_WOL_MAGIC;
  ifp->if_capenable = ifp->if_capabilities;
 }




 error = mii_attach(dev, &sc->sis_miibus, ifp, sis_ifmedia_upd,
     sis_ifmedia_sts, BMSR_DEFCAPMASK, MII_PHY_ANY, MII_OFFSET_ANY, 0);
 if (error != 0) {
  device_printf(dev, "attaching PHYs failed\n");
  goto fail;
 }




 ether_ifattach(ifp, eaddr);




 ifp->if_hdrlen = sizeof(struct ether_vlan_header);
 ifp->if_capabilities |= IFCAP_VLAN_MTU;
 ifp->if_capenable = ifp->if_capabilities;





 error = bus_setup_intr(dev, sc->sis_res[1], INTR_TYPE_NET | INTR_MPSAFE,
     ((void*)0), sis_intr, sc, &sc->sis_intrhand);

 if (error) {
  device_printf(dev, "couldn't set up irq\n");
  ether_ifdetach(ifp);
  goto fail;
 }

fail:
 if (error)
  sis_detach(dev);

 return (error);
}
