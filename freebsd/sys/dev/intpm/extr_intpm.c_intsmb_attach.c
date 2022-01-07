
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intsmb_softc {int cfg_irq9; int sb8xx; int io_rid; int poll; int * io_res; int * smbus; scalar_t__ isbusy; int irq_hand; int * irq_res; int lock; int dev; } ;
typedef int device_t ;




 int AMDSB8_SMBUS_REVID ;

 int ENXIO ;
 int INTR_MPSAFE ;
 int INTR_TYPE_MISC ;
 int MTX_DEF ;
 int PCIR_INTLINE ;
 int PCI_BASE_ADDR_SMB ;
 int PCI_HST_CFG_SMB ;
 int PCI_INTR_SMB_ENABLE ;


 int PCI_INTR_SMB_MASK ;

 int PCI_REVID_SMB ;
 int PIIX4_SMBSLVCNT ;
 int PIIX4_SMBSLVCNT_ALTEN ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 void* bus_alloc_resource_any (int ,int ,int*,int) ;
 int bus_set_resource (int ,int ,int,int,int) ;
 int bus_setup_intr (int ,int *,int,int *,int ,struct intsmb_softc*,int *) ;
 int bus_write_1 (int *,int ,int ) ;
 int * device_add_child (int ,char*,int) ;
 int device_get_nameunit (int ) ;
 struct intsmb_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int device_probe_and_attach (int *) ;
 int intsmb_rawintr ;
 int intsmb_release_resources (int ) ;
 int mtx_init (int *,int ,char*,int ) ;
 int pci_get_devid (int ) ;
 int pci_get_revid (int ) ;
 int pci_read_config (int ,int ,int) ;
 int pci_write_config (int ,int ,int,int) ;
 int printf (char*,int) ;
 int sb8xx_attach (int ) ;

__attribute__((used)) static int
intsmb_attach(device_t dev)
{
 struct intsmb_softc *sc = device_get_softc(dev);
 int error, rid, value;
 int intr;
 char *str;

 sc->dev = dev;

 mtx_init(&sc->lock, device_get_nameunit(dev), "intsmb", MTX_DEF);

 sc->cfg_irq9 = 0;
 switch (pci_get_devid(dev)) {

 case 0x71138086:
 case 0x719b8086:

  sc->cfg_irq9 = 1;
  break;

 case 131:
  if (pci_get_revid(dev) >= AMDSB8_SMBUS_REVID)
   sc->sb8xx = 1;
  break;
 case 132:
 case 133:
  sc->sb8xx = 1;
  break;
 }

 if (sc->sb8xx) {
  error = sb8xx_attach(dev);
  if (error != 0)
   goto fail;
  else
   goto no_intr;
 }

 sc->io_rid = PCI_BASE_ADDR_SMB;
 sc->io_res = bus_alloc_resource_any(dev, SYS_RES_IOPORT, &sc->io_rid,
     RF_ACTIVE);
 if (sc->io_res == ((void*)0)) {
  device_printf(dev, "Could not allocate I/O space\n");
  error = ENXIO;
  goto fail;
 }

 if (sc->cfg_irq9) {
  pci_write_config(dev, PCIR_INTLINE, 0x9, 1);
  pci_write_config(dev, PCI_HST_CFG_SMB,
      130 | PCI_INTR_SMB_ENABLE, 1);
 }
 value = pci_read_config(dev, PCI_HST_CFG_SMB, 1);
 sc->poll = (value & PCI_INTR_SMB_ENABLE) == 0;
 intr = value & PCI_INTR_SMB_MASK;
 switch (intr) {
 case 128:
  str = "SMI";
  break;
 case 130:
  str = "IRQ 9";
  break;
 case 129:
  str = "PCI IRQ";
  break;
 default:
  str = "BOGUS";
 }

 device_printf(dev, "intr %s %s ", str,
     sc->poll == 0 ? "enabled" : "disabled");
 printf("revision %d\n", pci_read_config(dev, PCI_REVID_SMB, 1));

 if (!sc->poll && intr == 128) {
  device_printf(dev,
      "using polling mode when configured interrupt is SMI\n");
  sc->poll = 1;
 }

 if (sc->poll)
     goto no_intr;

 if (intr != 130 && intr != 129) {
  device_printf(dev, "Unsupported interrupt mode\n");
  error = ENXIO;
  goto fail;
 }


 rid = 0;
 if (sc->cfg_irq9)
  bus_set_resource(dev, SYS_RES_IRQ, rid, 9, 1);

 sc->irq_res = bus_alloc_resource_any(dev, SYS_RES_IRQ, &rid,
     RF_SHAREABLE | RF_ACTIVE);
 if (sc->irq_res == ((void*)0)) {
  device_printf(dev, "Could not allocate irq\n");
  error = ENXIO;
  goto fail;
 }

 error = bus_setup_intr(dev, sc->irq_res, INTR_TYPE_MISC | INTR_MPSAFE,
     ((void*)0), intsmb_rawintr, sc, &sc->irq_hand);
 if (error) {
  device_printf(dev, "Failed to map intr\n");
  goto fail;
 }

no_intr:
 sc->isbusy = 0;
 sc->smbus = device_add_child(dev, "smbus", -1);
 if (sc->smbus == ((void*)0)) {
  device_printf(dev, "failed to add smbus child\n");
  error = ENXIO;
  goto fail;
 }
 error = device_probe_and_attach(sc->smbus);
 if (error) {
  device_printf(dev, "failed to probe+attach smbus child\n");
  goto fail;
 }





 return (0);

fail:
 intsmb_release_resources(dev);
 return (error);
}
