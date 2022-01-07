
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sdhci_slot {int sdma_boundary; int max_clk; int caps; int quirks; } ;
struct sdhci_fdt_softc {int num_slots; struct sdhci_slot* slots; int intrhand; int * irq_res; int sdma_boundary; int max_clk; int caps; int quirks; int ** mem_res; int dev; } ;
typedef int device_t ;
struct TYPE_2__ {scalar_t__ ocd_data; } ;


 int ENOMEM ;
 int INTR_MPSAFE ;
 int INTR_TYPE_MISC ;
 int RF_ACTIVE ;
 scalar_t__ SDHCI_FDT_RK3399 ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 void* bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_setup_intr (int ,int *,int,int *,int ,struct sdhci_fdt_softc*,int *) ;
 int compat_data ;
 struct sdhci_fdt_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 TYPE_1__* ofw_bus_search_compatible (int ,int ) ;
 int sdhci_fdt_intr ;
 int sdhci_init_rk3399 (int ) ;
 scalar_t__ sdhci_init_slot (int ,struct sdhci_slot*,int) ;
 int sdhci_start_slot (struct sdhci_slot*) ;

__attribute__((used)) static int
sdhci_fdt_attach(device_t dev)
{
 struct sdhci_fdt_softc *sc = device_get_softc(dev);
 struct sdhci_slot *slot;
 int err, slots, rid, i;

 sc->dev = dev;


 rid = 0;
 sc->irq_res = bus_alloc_resource_any(dev, SYS_RES_IRQ, &rid,
     RF_ACTIVE);
 if (sc->irq_res == ((void*)0)) {
  device_printf(dev, "Can't allocate IRQ\n");
  return (ENOMEM);
 }
 slots = sc->num_slots;
 sc->num_slots = 0;
 for (i = 0; i < slots; i++) {
  slot = &sc->slots[sc->num_slots];


  rid = 0;
  sc->mem_res[i] = bus_alloc_resource_any(dev, SYS_RES_MEMORY,
       &rid, RF_ACTIVE);
  if (sc->mem_res[i] == ((void*)0)) {
   device_printf(dev,
       "Can't allocate memory for slot %d\n", i);
   continue;
  }

  slot->quirks = sc->quirks;
  slot->caps = sc->caps;
  slot->max_clk = sc->max_clk;
  slot->sdma_boundary = sc->sdma_boundary;

  if (sdhci_init_slot(dev, slot, i) != 0)
   continue;

  sc->num_slots++;
 }
 device_printf(dev, "%d slot(s) allocated\n", sc->num_slots);


 err = bus_setup_intr(dev, sc->irq_res, INTR_TYPE_MISC | INTR_MPSAFE,
     ((void*)0), sdhci_fdt_intr, sc, &sc->intrhand);
 if (err) {
  device_printf(dev, "Cannot setup IRQ\n");
  return (err);
 }


 for (i = 0; i < sc->num_slots; i++)
  sdhci_start_slot(&sc->slots[i]);

 return (0);
}
