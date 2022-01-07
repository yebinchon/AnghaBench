
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int ifq_maxlen; } ;
struct ifnet {int if_flags; int if_capabilities; int if_capenable; TYPE_1__ if_snd; int if_init; int if_start; int if_ioctl; struct are_softc* if_softc; } ;
struct are_softc {int* are_eaddr; int are_rid; int are_if_flags; int are_intrhand; int * are_irq; int are_ifmedia; int are_miibus; int are_dev; int are_miiproxy; struct ifnet* are_ifp; int * are_res; int are_bhandle; int are_btag; int are_link_task; int are_mtx; int are_stat_callout; } ;
typedef int device_t ;


 int AR5312_IRQ_ENET0 ;
 int AR5312_IRQ_ENET1 ;
 int AR5315_CPU_IRQ_ENET ;
 scalar_t__ AR531X_SOC_AR5315 ;
 int BMSR_DEFCAPMASK ;
 int BUSMODE_SWR ;
 int CSR_BUSMODE ;
 int CSR_WRITE_4 (struct are_softc*,int ,int ) ;
 int DELAY (int) ;
 int ENOSPC ;
 int ENXIO ;
 int ETHER_ADDR_LEN ;
 int IFCAP_VLAN_MTU ;
 int IFF_BROADCAST ;
 int IFF_MULTICAST ;
 int IFF_SIMPLEX ;
 int IFM_AUTO ;
 int IFM_ETHER ;
 int IFQ_SET_MAXLEN (TYPE_1__*,int ) ;
 int IFQ_SET_READY (TYPE_1__*) ;
 int IFT_ETHER ;
 int INTR_MPSAFE ;
 int INTR_TYPE_NET ;
 int MII_OFFSET_ANY ;
 int MII_PHY_ANY ;
 int MTX_DEF ;
 int MTX_NETWORK_LOCK ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int TASK_INIT (int *,int ,int ,struct are_softc*) ;
 scalar_t__ ar531x_soc ;
 int are_detach (int ) ;
 scalar_t__ are_dma_alloc (struct are_softc*) ;
 int are_ifmedia_sts ;
 int are_ifmedia_upd ;
 int are_init ;
 int are_intr ;
 int are_ioctl ;
 int are_link_task ;
 int are_start ;
 void* bus_alloc_resource_any (int ,int ,int*,int) ;
 int bus_setup_intr (int ,int *,int,int *,int ,struct are_softc*,int *) ;
 int callout_init_mtx (int *,int *,int ) ;
 int cpu_establish_hardintr (char*,int *,int ,struct are_softc*,int,int,int *) ;
 int device_get_name (int ) ;
 int device_get_nameunit (int ) ;
 struct are_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*,...) ;
 int ether_ifattach (struct ifnet*,int*) ;
 int ether_ifdetach (struct ifnet*) ;
 struct ifnet* if_alloc (int ) ;
 int if_initname (struct ifnet*,int ,int) ;
 int ifmedia_add (int *,int,int ,int *) ;
 int ifmedia_init (int *,int ,int ,int ) ;
 int ifmedia_set (int *,int) ;
 int ifqmaxlen ;
 int mii_attach (int ,int *,struct ifnet*,int ,int ,int ,int ,int ,int ) ;
 int mii_attach_proxy (int ) ;
 int mtx_init (int *,int ,int ,int ) ;
 int resource_string_value (int ,int,char*,char const**) ;
 int rman_get_bushandle (int *) ;
 int rman_get_bustag (int *) ;
 int sscanf (char*,char*,int*,int*,int*,int*,int*,int*) ;

__attribute__((used)) static int
are_attach(device_t dev)
{
 struct ifnet *ifp;
 struct are_softc *sc;
 int error = 0;



 int rid;

 int unit;
 char * local_macstr;
 int count;
 int i;

 sc = device_get_softc(dev);
 unit = device_get_unit(dev);
 sc->are_dev = dev;


 sc->are_eaddr[0] = 0x00;
 sc->are_eaddr[1] = 0x0C;
 sc->are_eaddr[2] = 0x42;
 sc->are_eaddr[3] = 0x09;
 sc->are_eaddr[4] = 0x5E;
 sc->are_eaddr[5] = 0x6B;


 if (!resource_string_value(device_get_name(dev),
  device_get_unit(dev), "macaddr", (const char **)&local_macstr)) {
  uint32_t tmpmac[ETHER_ADDR_LEN];


  device_printf(dev, "Overriding MAC address from environment: '%s'\n",
      local_macstr);



  count = sscanf(local_macstr, "%x%*c%x%*c%x%*c%x%*c%x%*c%x",
      &tmpmac[0], &tmpmac[1],
      &tmpmac[2], &tmpmac[3],
      &tmpmac[4], &tmpmac[5]);
  if (count == 6) {

   for (i = 0; i < ETHER_ADDR_LEN; i++)
    sc->are_eaddr[i] = tmpmac[i];
  }
 }

 mtx_init(&sc->are_mtx, device_get_nameunit(dev), MTX_NETWORK_LOCK,
     MTX_DEF);
 callout_init_mtx(&sc->are_stat_callout, &sc->are_mtx, 0);
 TASK_INIT(&sc->are_link_task, 0, are_link_task, sc);


 sc->are_rid = 0;
 sc->are_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &sc->are_rid,
     RF_ACTIVE | RF_SHAREABLE);

 if (sc->are_res == ((void*)0)) {
  device_printf(dev, "couldn't map memory\n");
  error = ENXIO;
  goto fail;
 }

 sc->are_btag = rman_get_bustag(sc->are_res);
 sc->are_bhandle = rman_get_bushandle(sc->are_res);



 rid = 0;
 sc->are_irq = bus_alloc_resource_any(dev, SYS_RES_IRQ, &rid,
     RF_SHAREABLE | RF_ACTIVE);

 if (sc->are_irq == ((void*)0)) {
  device_printf(dev, "couldn't map interrupt\n");
  error = ENXIO;
  goto fail;
 }



 ifp = sc->are_ifp = if_alloc(IFT_ETHER);

 if (ifp == ((void*)0)) {
  device_printf(dev, "couldn't allocate ifnet structure\n");
  error = ENOSPC;
  goto fail;
 }
 ifp->if_softc = sc;
 if_initname(ifp, device_get_name(dev), device_get_unit(dev));
 ifp->if_flags = IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST;
 ifp->if_ioctl = are_ioctl;
 ifp->if_start = are_start;
 ifp->if_init = are_init;
 sc->are_if_flags = ifp->if_flags;


 IFQ_SET_MAXLEN(&ifp->if_snd, ifqmaxlen);
 ifp->if_snd.ifq_maxlen = ifqmaxlen;
 IFQ_SET_READY(&ifp->if_snd);


 ifp->if_capabilities |= IFCAP_VLAN_MTU;

 ifp->if_capenable = ifp->if_capabilities;

 if (are_dma_alloc(sc) != 0) {
  error = ENXIO;
  goto fail;
 }

 CSR_WRITE_4(sc, CSR_BUSMODE, BUSMODE_SWR);
 DELAY(1000);
 ifmedia_init(&sc->are_ifmedia, 0, are_ifmedia_upd, are_ifmedia_sts);

 ifmedia_add(&sc->are_ifmedia, IFM_ETHER | IFM_AUTO, 0, ((void*)0));
 ifmedia_set(&sc->are_ifmedia, IFM_ETHER | IFM_AUTO);



 ether_ifattach(ifp, sc->are_eaddr);
 error = bus_setup_intr(dev, sc->are_irq, INTR_TYPE_NET | INTR_MPSAFE,
     ((void*)0), are_intr, sc, &sc->are_intrhand);

 if (error) {
  device_printf(dev, "couldn't set up irq\n");
  ether_ifdetach(ifp);
  goto fail;
 }


fail:
 if (error)
  are_detach(dev);

 return (error);
}
