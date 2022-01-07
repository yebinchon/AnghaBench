
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snps_dwc3_softc {int usb3_phy; int node; int usb2_phy; int * mem_res; int bsh; int bst; int dev; } ;
typedef int device_t ;


 int DWC3_GSNPSID ;
 int DWC3_READ (struct snps_dwc3_softc*,int ) ;
 int ENXIO ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 scalar_t__ bootverbose ;
 int * bus_alloc_resource_any (int ,int ,int*,int ) ;
 struct snps_dwc3_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int phy_get_by_ofw_name (int ,int ,char*,int *) ;
 int rman_get_bushandle (int *) ;
 int rman_get_bustag (int *) ;
 int snps_dwc3_attach_xhci (int ) ;
 int snps_dwc3_configure_host (struct snps_dwc3_softc*) ;
 int snps_dwc3_configure_phy (struct snps_dwc3_softc*) ;
 int snps_dwc3_do_quirks (struct snps_dwc3_softc*) ;
 int snps_dwc3_reset (struct snps_dwc3_softc*) ;
 int snsp_dwc3_dump_regs (struct snps_dwc3_softc*) ;

__attribute__((used)) static int
snps_dwc3_attach(device_t dev)
{
 struct snps_dwc3_softc *sc;
 int rid = 0;

 sc = device_get_softc(dev);
 sc->dev = dev;

 sc->mem_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
     RF_ACTIVE);
 if (sc->mem_res == ((void*)0)) {
  device_printf(dev, "Failed to map memory\n");
  return (ENXIO);
 }
 sc->bst = rman_get_bustag(sc->mem_res);
 sc->bsh = rman_get_bushandle(sc->mem_res);

 if (bootverbose)
  device_printf(dev, "snps id: %x\n", DWC3_READ(sc, DWC3_GSNPSID));


 phy_get_by_ofw_name(dev, sc->node, "usb2-phy", &sc->usb2_phy);
 phy_get_by_ofw_name(dev, sc->node, "usb3-phy", &sc->usb3_phy);

 snps_dwc3_reset(sc);
 snps_dwc3_configure_host(sc);
 snps_dwc3_configure_phy(sc);
 snps_dwc3_do_quirks(sc);



 snps_dwc3_attach_xhci(dev);

 return (0);
}
