
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct sdhci_slot {int quirks; } ;
struct sdhci_pci_softc {int quirks; size_t num_slots; struct sdhci_slot* slots; int intrhand; int * irq_res; int ** mem_res; } ;
typedef int device_t ;
struct TYPE_2__ {int model; int subvendor; int quirks; } ;


 int EINVAL ;
 int ENOMEM ;
 int INTR_MPSAFE ;
 int INTR_TYPE_MISC ;
 int PCIR_BAR (int) ;
 int PCI_SLOT_INFO ;
 int PCI_SLOT_INFO_FIRST_BAR (int) ;
 int PCI_SLOT_INFO_SLOTS (int) ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SDHCI_QUIRK_LOWER_FREQUENCY ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 void* bus_alloc_resource_any (int ,int ,int*,int) ;
 int bus_setup_intr (int ,int *,int,int *,int ,struct sdhci_pci_softc*,int *) ;
 struct sdhci_pci_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 scalar_t__ pci_alloc_msi (int ,int*) ;
 int pci_enable_busmaster (int ) ;
 scalar_t__ pci_get_device (int ) ;
 int pci_get_subvendor (int ) ;
 scalar_t__ pci_get_vendor (int ) ;
 int pci_read_config (int ,int ,int) ;
 int pci_release_msi (int ) ;
 TYPE_1__* sdhci_devices ;
 scalar_t__ sdhci_enable_msi ;
 scalar_t__ sdhci_init_slot (int ,struct sdhci_slot*,int) ;
 int sdhci_lower_frequency (int ) ;
 int sdhci_pci_intr ;
 int sdhci_quirk_clear ;
 int sdhci_quirk_set ;
 int sdhci_start_slot (struct sdhci_slot*) ;

__attribute__((used)) static int
sdhci_pci_attach(device_t dev)
{
 struct sdhci_pci_softc *sc = device_get_softc(dev);
 struct sdhci_slot *slot;
 uint32_t model;
 uint16_t subvendor;
 int bar, err, rid, slots, i;

 model = (uint32_t)pci_get_device(dev) << 16;
 model |= (uint32_t)pci_get_vendor(dev) & 0x0000ffff;
 subvendor = pci_get_subvendor(dev);

 for (i = 0; sdhci_devices[i].model != 0; i++) {
  if (sdhci_devices[i].model == model &&
      (sdhci_devices[i].subvendor == 0xffff ||
      sdhci_devices[i].subvendor == subvendor)) {
   sc->quirks = sdhci_devices[i].quirks;
   break;
  }
 }
 sc->quirks &= ~sdhci_quirk_clear;
 sc->quirks |= sdhci_quirk_set;


 if (sc->quirks & SDHCI_QUIRK_LOWER_FREQUENCY)
  sdhci_lower_frequency(dev);

 slots = pci_read_config(dev, PCI_SLOT_INFO, 1);
 bar = PCI_SLOT_INFO_FIRST_BAR(slots);
 slots = PCI_SLOT_INFO_SLOTS(slots);
 if (slots > 6 || bar > 5) {
  device_printf(dev, "Incorrect slots information (%d, %d).\n",
      slots, bar);
  return (EINVAL);
 }

 i = 1;
 rid = 0;
 if (sdhci_enable_msi != 0 && pci_alloc_msi(dev, &i) == 0)
  rid = 1;
 sc->irq_res = bus_alloc_resource_any(dev, SYS_RES_IRQ, &rid,
  RF_ACTIVE | (rid != 0 ? 0 : RF_SHAREABLE));
 if (sc->irq_res == ((void*)0)) {
  device_printf(dev, "Can't allocate IRQ\n");
  pci_release_msi(dev);
  return (ENOMEM);
 }

 for (i = 0; i < slots; i++) {
  slot = &sc->slots[sc->num_slots];


  rid = PCIR_BAR(bar + i);
  sc->mem_res[i] = bus_alloc_resource_any(dev, SYS_RES_MEMORY,
      &rid, RF_ACTIVE);
  if (sc->mem_res[i] == ((void*)0)) {
   device_printf(dev,
       "Can't allocate memory for slot %d\n", i);
   continue;
  }

  slot->quirks = sc->quirks;

  if (sdhci_init_slot(dev, slot, i) != 0)
   continue;

  sc->num_slots++;
 }
 device_printf(dev, "%d slot(s) allocated\n", sc->num_slots);

 err = bus_setup_intr(dev, sc->irq_res, INTR_TYPE_MISC | INTR_MPSAFE,
     ((void*)0), sdhci_pci_intr, sc, &sc->intrhand);
 if (err)
  device_printf(dev, "Can't setup IRQ\n");
 pci_enable_busmaster(dev);

 for (i = 0; i < sc->num_slots; i++) {
  sdhci_start_slot(&sc->slots[i]);
 }

 return (0);
}
