
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int max_clk; int quirks; } ;
struct fsl_sdhci_softc {scalar_t__ hwtype; int slot_init_done; TYPE_1__ slot; int gpio; int baseclk_hz; int intr_cookie; void* irq_res; void* mem_res; int r1bfix_callout; int dev; } ;
typedef int phandle_t ;
typedef int device_t ;
struct TYPE_6__ {scalar_t__ ocd_data; } ;


 int ENXIO ;
 scalar_t__ HWTYPE_NONE ;
 int INTR_MPSAFE ;
 int INTR_TYPE_BIO ;
 scalar_t__ OF_hasprop (int ,char*) ;
 int RD4 (struct fsl_sdhci_softc*,int ) ;
 int RF_ACTIVE ;
 int SDHCI_QUIRK_BROKEN_DMA ;
 int SDHCI_QUIRK_DATA_TIMEOUT_USES_SDCLK ;
 int SDHC_PROT_CTRL ;
 int SDHC_PROT_EMODE_BIG ;
 int SDHC_PROT_EMODE_LITTLE ;
 int SDHC_PROT_EMODE_MASK ;
 int SDHC_WTMK_LVL ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int WR4 (struct fsl_sdhci_softc*,int ,int) ;
 void* bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_generic_attach (int ) ;
 int bus_generic_probe (int ) ;
 scalar_t__ bus_setup_intr (int ,void*,int,int *,int ,struct fsl_sdhci_softc*,int *) ;
 int callout_init (int *,int) ;
 int compat_data ;
 struct fsl_sdhci_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int fsl_sdhci_detach (int ) ;
 int fsl_sdhci_get_platform_clock (int ) ;
 int fsl_sdhci_intr ;
 int imx_ccm_sdhci_hz () ;
 int ofw_bus_get_node (int ) ;
 scalar_t__ ofw_bus_is_compatible (int ,char*) ;
 TYPE_4__* ofw_bus_search_compatible (int ,int ) ;
 int panic (char*) ;
 int sdhci_fdt_gpio_setup (int ,TYPE_1__*) ;
 int sdhci_init_slot (int ,TYPE_1__*,int ) ;
 int sdhci_start_slot (TYPE_1__*) ;

__attribute__((used)) static int
fsl_sdhci_attach(device_t dev)
{
 struct fsl_sdhci_softc *sc = device_get_softc(dev);
 int rid, err;





 sc->dev = dev;

 callout_init(&sc->r1bfix_callout, 1);

 sc->hwtype = ofw_bus_search_compatible(dev, compat_data)->ocd_data;
 if (sc->hwtype == HWTYPE_NONE)
  panic("Impossible: not compatible in fsl_sdhci_attach()");

 rid = 0;
 sc->mem_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
     RF_ACTIVE);
 if (!sc->mem_res) {
  device_printf(dev, "cannot allocate memory window\n");
  err = ENXIO;
  goto fail;
 }

 rid = 0;
 sc->irq_res = bus_alloc_resource_any(dev, SYS_RES_IRQ, &rid,
     RF_ACTIVE);
 if (!sc->irq_res) {
  device_printf(dev, "cannot allocate interrupt\n");
  err = ENXIO;
  goto fail;
 }

 if (bus_setup_intr(dev, sc->irq_res, INTR_TYPE_BIO | INTR_MPSAFE,
     ((void*)0), fsl_sdhci_intr, sc, &sc->intr_cookie)) {
  device_printf(dev, "cannot setup interrupt handler\n");
  err = ENXIO;
  goto fail;
 }

 sc->slot.quirks |= SDHCI_QUIRK_DATA_TIMEOUT_USES_SDCLK;




 sc->slot.quirks |= SDHCI_QUIRK_BROKEN_DMA;
 if (ofw_bus_is_compatible(dev, "fsl,p1022-esdhc"))
  WR4(sc, SDHC_WTMK_LVL, 0x10801080);
 else
  WR4(sc, SDHC_WTMK_LVL, 0x08800880);
 sc->baseclk_hz = imx_ccm_sdhci_hz();

 sc->slot.max_clk = sc->baseclk_hz;





 sc->gpio = sdhci_fdt_gpio_setup(dev, &sc->slot);
 sdhci_init_slot(dev, &sc->slot, 0);
 sc->slot_init_done = 1;

 bus_generic_probe(dev);
 bus_generic_attach(dev);

 sdhci_start_slot(&sc->slot);

 return (0);

fail:
 fsl_sdhci_detach(dev);
 return (err);
}
