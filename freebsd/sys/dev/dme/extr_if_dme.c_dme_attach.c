
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct ifnet {int if_flags; int if_snd; int if_init; int if_ioctl; int if_start; struct dme_softc* if_softc; } ;
struct dme_softc {int dme_bits; int dme_rev; int dme_intrhand; int * dme_irq; int dme_macaddr; int dme_miibus; struct ifnet* dme_ifp; int * dme_res; int dme_handle; int dme_tag; TYPE_1__* gpio_rset; int dme_vcc_regulator; int dme_mtx; int dme_tick_ch; int dme_dev; } ;
typedef int device_t ;
struct TYPE_2__ {int dev; int pin; } ;


 int BMSR_DEFCAPMASK ;
 int DELAY (int) ;
 int DME_CHIPR ;
 int DME_CHIP_DM9000 ;
 int DME_CHIP_DM9000A ;
 int DME_CHIP_DM9000B ;
 int DME_ISR ;
 int DME_PIDH ;
 int DME_PIDL ;
 int DME_VIDH ;
 int DME_VIDL ;
 int ENOSPC ;
 int ENXIO ;
 int GPIO_PIN_OUTPUT ;
 int GPIO_PIN_SET (int ,int ,int) ;
 int GPIO_PIN_SETFLAGS (int ,int ,int ) ;
 int IFF_BROADCAST ;
 int IFF_MULTICAST ;
 int IFF_SIMPLEX ;
 int IFQ_MAXLEN ;
 int IFQ_SET_MAXLEN (int *,int ) ;
 int IFT_ETHER ;
 int INTR_MPSAFE ;
 int INTR_TYPE_NET ;
 int KASSERT (int,char*) ;
 int MII_OFFSET_ANY ;
 int MII_PHY_ANY ;
 int MTX_DEF ;
 int MTX_NETWORK_LOCK ;
 int RF_ACTIVE ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 void* bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_setup_intr (int ,int *,int,int *,int ,struct dme_softc*,int *) ;
 int callout_init_mtx (int *,int *,int ) ;
 int device_get_name (int ) ;
 int device_get_nameunit (int ) ;
 struct dme_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*,...) ;
 int dme_config (struct dme_softc*) ;
 int dme_detach (int ) ;
 int dme_get_macaddr (struct dme_softc*) ;
 int dme_ifmedia_sts ;
 int dme_ifmedia_upd ;
 int dme_init ;
 int dme_intr ;
 int dme_ioctl ;
 int dme_read_reg (struct dme_softc*,int ) ;
 int dme_reset (struct dme_softc*) ;
 int dme_start ;
 int ether_ifattach (struct ifnet*,int ) ;
 int ether_ifdetach (struct ifnet*) ;
 struct ifnet* if_alloc (int ) ;
 int if_initname (struct ifnet*,int ,int ) ;
 int mii_attach (int ,int *,struct ifnet*,int ,int ,int ,int ,int ,int ) ;
 int mtx_init (int *,int ,int ,int ) ;
 int ofw_gpiobus_parse_gpios (int ,char*,TYPE_1__**) ;
 int regulator_enable (int ) ;
 int regulator_get_by_ofw_property (int ,int ,char*,int *) ;
 int rman_get_bushandle (int *) ;
 int rman_get_bustag (int *) ;

__attribute__((used)) static int
dme_attach(device_t dev)
{
 struct dme_softc *sc;
 struct ifnet *ifp;
 int error, rid;
 uint32_t data;

 sc = device_get_softc(dev);
 sc->dme_dev = dev;

 error = 0;

 mtx_init(&sc->dme_mtx, device_get_nameunit(dev), MTX_NETWORK_LOCK,
     MTX_DEF);
 callout_init_mtx(&sc->dme_tick_ch, &sc->dme_mtx, 0);

 rid = 0;
 sc->dme_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
     RF_ACTIVE);
 if (sc->dme_res == ((void*)0)) {
  device_printf(dev, "unable to map memory\n");
  error = ENXIO;
  goto fail;
 }

 rid = 0;
 sc->dme_irq = bus_alloc_resource_any(dev, SYS_RES_IRQ, &rid,
     RF_ACTIVE);
 if (sc->dme_irq == ((void*)0)) {
  device_printf(dev, "unable to map memory\n");
  error = ENXIO;
  goto fail;
 }



 error = regulator_get_by_ofw_property(dev, 0, "vcc-supply", &sc->dme_vcc_regulator);
 if (error == 0) {
  error = regulator_enable(sc->dme_vcc_regulator);
  if (error != 0) {
   device_printf(dev, "unable to enable power supply\n");
   error = ENXIO;
   goto fail;
  }
 }




 DELAY(100000);


 error = ofw_gpiobus_parse_gpios(dev, "reset-gpios", &sc->gpio_rset);
 if (error > 1) {
  device_printf(dev, "too many reset gpios\n");
  sc->gpio_rset = ((void*)0);
  error = ENXIO;
  goto fail;
 }

 if (sc->gpio_rset != ((void*)0)) {
  error = GPIO_PIN_SET(sc->gpio_rset->dev, sc->gpio_rset->pin, 0);
  if (error != 0) {
   device_printf(dev, "Cannot configure GPIO pin %d on %s\n",
       sc->gpio_rset->pin, device_get_nameunit(sc->gpio_rset->dev));
   goto fail;
  }

  error = GPIO_PIN_SETFLAGS(sc->gpio_rset->dev, sc->gpio_rset->pin,
      GPIO_PIN_OUTPUT);
  if (error != 0) {
   device_printf(dev, "Cannot configure GPIO pin %d on %s\n",
       sc->gpio_rset->pin, device_get_nameunit(sc->gpio_rset->dev));
   goto fail;
  }

  DELAY(2000);

  error = GPIO_PIN_SET(sc->gpio_rset->dev, sc->gpio_rset->pin, 1);
  if (error != 0) {
   device_printf(dev, "Cannot configure GPIO pin %d on %s\n",
       sc->gpio_rset->pin, device_get_nameunit(sc->gpio_rset->dev));
   goto fail;
  }

  DELAY(4000);
 } else
  device_printf(dev, "Unable to find reset GPIO\n");

 sc->dme_tag = rman_get_bustag(sc->dme_res);
 sc->dme_handle = rman_get_bushandle(sc->dme_res);


 dme_reset(sc);


 switch((dme_read_reg(sc, DME_ISR) >> 6) & 0x03) {
 case 0:

  sc->dme_bits = 16;
  break;
 case 1:

  sc->dme_bits = 32;
  break;
 case 2:

  sc->dme_bits = 8;
  break;
 default:

  device_printf(dev, "Unable to determine device mode\n");
  error = ENXIO;
  goto fail;
 }

 DELAY(100000);


 data = dme_read_reg(sc, DME_VIDH) << 8;
 data |= dme_read_reg(sc, DME_VIDL);
 device_printf(dev, "Vendor ID: 0x%04x\n", data);


 data = dme_read_reg(sc, DME_PIDH) << 8;
 data |= dme_read_reg(sc, DME_PIDL);
 device_printf(dev, "Product ID: 0x%04x\n", data);


 data = dme_read_reg(sc, DME_CHIPR);
 device_printf(dev, "Revision: 0x%04x\n", data);
 if (data != DME_CHIP_DM9000A && data != DME_CHIP_DM9000B)
  data = DME_CHIP_DM9000;
 sc->dme_rev = data;

 device_printf(dev, "using %d-bit IO mode\n", sc->dme_bits);
 KASSERT(sc->dme_bits == 8, ("wrong io mode"));


 dme_get_macaddr(sc);


 dme_config(sc);

 ifp = sc->dme_ifp = if_alloc(IFT_ETHER);
 if (ifp == ((void*)0)) {
  device_printf(dev, "unable to allocate ifp\n");
  error = ENOSPC;
  goto fail;
 }
 ifp->if_softc = sc;


 error = mii_attach(dev, &sc->dme_miibus, ifp, dme_ifmedia_upd,
     dme_ifmedia_sts, BMSR_DEFCAPMASK, MII_PHY_ANY, MII_OFFSET_ANY, 0);

 if (error != 0) {
  device_printf(dev, "PHY probe failed\n");
  goto fail;
 }

 if_initname(ifp, device_get_name(dev), device_get_unit(dev));
 ifp->if_flags = IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST;
 ifp->if_start = dme_start;
 ifp->if_ioctl = dme_ioctl;
 ifp->if_init = dme_init;
 IFQ_SET_MAXLEN(&ifp->if_snd, IFQ_MAXLEN);

 ether_ifattach(ifp, sc->dme_macaddr);

 error = bus_setup_intr(dev, sc->dme_irq, INTR_TYPE_NET | INTR_MPSAFE,
     ((void*)0), dme_intr, sc, &sc->dme_intrhand);
 if (error) {
  device_printf(dev, "couldn't set up irq\n");
  ether_ifdetach(ifp);
  goto fail;
 }

fail:
 if (error != 0)
  dme_detach(dev);
 return (error);
}
