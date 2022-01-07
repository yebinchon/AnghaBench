
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahci_controller {int numirqs; int * r_mem; scalar_t__ r_rid; int quirks; int dev; } ;
typedef int device_t ;


 int AHCI_Q_2CH ;
 int AHCI_Q_MRVL_SR_DEL ;
 int ENOMEM ;
 int ENXIO ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_MEMORY ;
 int ahci_attach (int ) ;
 int ahci_ctlr_reset (int ) ;
 int ahci_mv_regret_config (struct ahci_controller*) ;
 int * bus_alloc_resource_any (int ,int ,scalar_t__*,int) ;
 int bus_release_resource (int ,int ,scalar_t__,int *) ;
 struct ahci_controller* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 scalar_t__ ofw_bus_is_compatible (int ,char*) ;

__attribute__((used)) static int
ahci_mv_fdt_attach(device_t dev)
{
 struct ahci_controller *ctlr;
 int rc;

 ctlr = device_get_softc(dev);
 ctlr->dev = dev;
 ctlr->r_rid = 0;
 ctlr->quirks = AHCI_Q_2CH;
 ctlr->numirqs = 1;

 if (ofw_bus_is_compatible(dev, "marvell,armada-380-ahci"))
  ctlr->quirks |= AHCI_Q_MRVL_SR_DEL;


 ctlr->r_mem = bus_alloc_resource_any(dev, SYS_RES_MEMORY,
     &ctlr->r_rid, RF_ACTIVE | RF_SHAREABLE);
 if (ctlr->r_mem == ((void*)0)) {
  device_printf(dev, "Failed to alloc memory for controller\n");
  return (ENOMEM);
 }


 rc = ahci_ctlr_reset(dev);
 if (rc != 0) {
  device_printf(dev, "Failed to reset controller\n");
  bus_release_resource(dev, SYS_RES_MEMORY, ctlr->r_rid, ctlr->r_mem);
  return (ENXIO);
 }

 ahci_mv_regret_config(ctlr);

 rc = ahci_attach(dev);
 if (rc != 0) {
  device_printf(dev, "Failed to initialize AHCI, with error %d\n", rc);
  return (ENXIO);
 }

 return (0);
}
