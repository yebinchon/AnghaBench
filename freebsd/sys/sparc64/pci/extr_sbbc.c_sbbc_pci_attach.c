
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct timespec {int tv_nsec; scalar_t__ tv_sec; } ;
struct sbbc_softc {int * sc_res; } ;
typedef int phandle_t ;
typedef int node ;
typedef int * device_t ;
typedef int bus_space_tag_t ;
typedef int bus_space_handle_t ;


 int ENXIO ;
 int OF_finddevice (char*) ;
 int OF_getprop (int,char*,int*,int) ;
 int RF_ACTIVE ;
 int SBBC_PCI_BAR ;
 int SBBC_SRAM_READ_4 (scalar_t__) ;
 int SBBC_TOD_MAGIC ;
 scalar_t__ SBBC_TOD_OFF (int ) ;
 int SBBC_TOD_VERSION ;
 int SYS_RES_MEMORY ;
 scalar_t__ bootverbose ;
 int * bus_alloc_resource_any (int *,int ,int*,int ) ;
 int bus_generic_attach (int *) ;
 int bus_release_resource (int *,int ,int,int *) ;
 int clock_register (int *,int) ;
 int * device_add_child (int *,int *,int) ;
 struct sbbc_softc* device_get_softc (int *) ;
 int device_printf (int *,char*,...) ;
 int ofw_bus_get_node (int *) ;
 scalar_t__ pci_get_intpin (int *) ;
 int pci_set_intpin (int *,int) ;
 int rman_get_bushandle (int *) ;
 int rman_get_bustag (int *) ;
 scalar_t__ sbbc_console ;
 int sbbc_parse_toc (int ,int ) ;
 int sbbc_tod_gettime (int *,struct timespec*) ;
 scalar_t__ sbbc_toddata ;
 int tod_magic ;
 int tod_version ;

__attribute__((used)) static int
sbbc_pci_attach(device_t dev)
{
 struct sbbc_softc *sc;
 struct timespec ts;
 device_t child;
 bus_space_tag_t bst;
 bus_space_handle_t bsh;
 phandle_t node;
 int error, rid;
 uint32_t val;


 if ((node = OF_finddevice("/chosen")) == -1) {
  device_printf(dev, "failed to find /chosen\n");
  return (ENXIO);
 }
 if (OF_getprop(node, "iosram", &node, sizeof(node)) == -1) {
  device_printf(dev, "failed to get iosram\n");
  return (ENXIO);
 }
 if (node != ofw_bus_get_node(dev))
  return (0);

 sc = device_get_softc(dev);
 rid = SBBC_PCI_BAR;
 sc->sc_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
     RF_ACTIVE);
 if (sc->sc_res == ((void*)0)) {
  device_printf(dev, "failed to allocate resources\n");
  return (ENXIO);
 }
 bst = rman_get_bustag(sc->sc_res);
 bsh = rman_get_bushandle(sc->sc_res);
 if (sbbc_console != 0) {

  if (pci_get_intpin(dev) == 0)
   pci_set_intpin(dev, 1);
  child = device_add_child(dev, ((void*)0), -1);
  if (child == ((void*)0))
   device_printf(dev, "failed to add UART device\n");
  error = bus_generic_attach(dev);
  if (error != 0)
   device_printf(dev, "failed to attach UART device\n");
 } else {
  error = sbbc_parse_toc(bst, bsh);
  if (error != 0) {
   device_printf(dev, "failed to parse TOC\n");
   if (sbbc_console != 0) {
    bus_release_resource(dev, SYS_RES_MEMORY, rid,
        sc->sc_res);
    return (error);
   }
  }
 }
 if (sbbc_toddata != 0) {
  if ((val = SBBC_SRAM_READ_4(sbbc_toddata +
      SBBC_TOD_OFF(tod_magic))) != SBBC_TOD_MAGIC)
   device_printf(dev, "invalid TOD magic %#x\n", val);
  else if ((val = SBBC_SRAM_READ_4(sbbc_toddata +
      SBBC_TOD_OFF(tod_version))) < SBBC_TOD_VERSION)
   device_printf(dev, "invalid TOD version %#x\n", val);
  else {
   clock_register(dev, 1000000);
   if (bootverbose) {
    sbbc_tod_gettime(dev, &ts);
    device_printf(dev,
        "current time: %ld.%09ld\n",
        (long)ts.tv_sec, ts.tv_nsec);
   }
  }
 }
 return (0);
}
