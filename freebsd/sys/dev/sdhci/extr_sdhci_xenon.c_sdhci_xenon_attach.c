
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct sdhci_xenon_softc {int slot_id; struct sdhci_slot* slot; int * mem_res; int * irq_res; int intrhand; int gpio; int max_clk; int caps; int quirks; int node; int dev; } ;
struct sdhci_slot {int max_clk; int caps; int quirks; int opt; } ;
typedef int device_t ;


 int ENOMEM ;
 int ENXIO ;
 int INTR_MPSAFE ;
 int INTR_TYPE_MISC ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 scalar_t__ OF_hasprop (int ,char*) ;
 int RF_ACTIVE ;
 int SDHCI_NON_REMOVABLE ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int XENON_AUTO_CLKGATE_DISABLE ;
 int XENON_MASK_CMD_CONFLICT_ERR ;
 int XENON_SDCLK_IDLEOFF_ENABLE_SHIFT ;
 int XENON_SYS_EXT_OP_CTRL ;
 int XENON_SYS_OP_CTRL ;
 scalar_t__ bootverbose ;
 void* bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_read_4 (int *,int ) ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_setup_intr (int ,int *,int,int *,int ,struct sdhci_xenon_softc*,int *) ;
 int bus_write_4 (int *,int ,int) ;
 struct sdhci_xenon_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int free (struct sdhci_slot*,int ) ;
 struct sdhci_slot* malloc (int,int ,int) ;
 int rman_get_rid (int *) ;
 int sdhci_fdt_gpio_setup (int ,struct sdhci_slot*) ;
 scalar_t__ sdhci_init_slot (int ,struct sdhci_slot*,int ) ;
 int sdhci_start_slot (struct sdhci_slot*) ;
 int sdhci_xenon_intr ;

__attribute__((used)) static int
sdhci_xenon_attach(device_t dev)
{
 struct sdhci_xenon_softc *sc = device_get_softc(dev);
 struct sdhci_slot *slot;
 int err, rid;
 uint32_t reg;

 sc->dev = dev;


 rid = 0;
 sc->irq_res = bus_alloc_resource_any(dev, SYS_RES_IRQ, &rid,
     RF_ACTIVE);
 if (sc->irq_res == ((void*)0)) {
  device_printf(dev, "Can't allocate IRQ\n");
  return (ENOMEM);
 }


 rid = 0;
 sc->mem_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY,
     &rid, RF_ACTIVE);
 if (sc->mem_res == ((void*)0)) {
  bus_release_resource(dev, SYS_RES_IRQ,
      rman_get_rid(sc->irq_res), sc->irq_res);
  device_printf(dev, "Can't allocate memory for slot\n");
  return (ENOMEM);
 }

 slot = malloc(sizeof(*slot), M_DEVBUF, M_ZERO | M_WAITOK);


 if (OF_hasprop(sc->node, "non-removable")) {
  slot->opt |= SDHCI_NON_REMOVABLE;
  if (bootverbose)
   device_printf(dev, "Non-removable media\n");
 }

 slot->quirks = sc->quirks;
 slot->caps = sc->caps;
 slot->max_clk = sc->max_clk;
 sc->slot = slot;





 sc->gpio = sdhci_fdt_gpio_setup(dev, slot);

 if (sdhci_init_slot(dev, sc->slot, 0))
  goto fail;


 err = bus_setup_intr(dev, sc->irq_res, INTR_TYPE_MISC | INTR_MPSAFE,
     ((void*)0), sdhci_xenon_intr, sc, &sc->intrhand);
 if (err) {
  device_printf(dev, "Cannot setup IRQ\n");
  goto fail;
 }


 reg = bus_read_4(sc->mem_res, XENON_SYS_OP_CTRL);
 reg |= XENON_AUTO_CLKGATE_DISABLE;
 bus_write_4(sc->mem_res, XENON_SYS_OP_CTRL, reg);


 reg |= (1 << sc->slot_id);
 bus_write_4(sc->mem_res, XENON_SYS_OP_CTRL, reg);


 reg = bus_read_4(sc->mem_res, XENON_SYS_EXT_OP_CTRL);
 reg |= (1 << sc->slot_id);
 bus_write_4(sc->mem_res, XENON_SYS_EXT_OP_CTRL, reg);


 reg &= ~XENON_AUTO_CLKGATE_DISABLE;
 bus_write_4(sc->mem_res, XENON_SYS_OP_CTRL, reg);


 reg = bus_read_4(sc->mem_res, XENON_SYS_OP_CTRL);
 reg &= ~(1 << (XENON_SDCLK_IDLEOFF_ENABLE_SHIFT + sc->slot_id));
 bus_write_4(sc->mem_res, XENON_SYS_OP_CTRL, reg);


 reg = bus_read_4(sc->mem_res, XENON_SYS_EXT_OP_CTRL);
 reg |= XENON_MASK_CMD_CONFLICT_ERR;
 bus_write_4(sc->mem_res, XENON_SYS_EXT_OP_CTRL, reg);


 sdhci_start_slot(sc->slot);

 return (0);

fail:
 bus_release_resource(dev, SYS_RES_IRQ, rman_get_rid(sc->irq_res),
     sc->irq_res);
 bus_release_resource(dev, SYS_RES_MEMORY, rman_get_rid(sc->mem_res),
     sc->mem_res);
 free(sc->slot, M_DEVBUF);
 sc->slot = ((void*)0);

 return (ENXIO);
}
