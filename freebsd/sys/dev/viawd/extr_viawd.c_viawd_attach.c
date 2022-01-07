
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct viawd_softc {int * wd_res; int wd_rid; int ev_tag; int * sb_dev; int * dev; } ;
typedef int * device_t ;


 int ENXIO ;
 int EVENTHANDLER_REGISTER (int ,int ,struct viawd_softc*,int ) ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_MEMORY ;
 int VIAWD_CONFIG_BASE ;
 int VIAWD_MEM_CTRL ;
 scalar_t__ VIAWD_MEM_CTRL_FIRED ;
 scalar_t__ VIAWD_MEM_LEN ;
 int * bus_alloc_resource_any (int *,int ,int *,int) ;
 int bus_release_resource (int *,int ,int ,int *) ;
 int * device_get_parent (int *) ;
 struct viawd_softc* device_get_softc (int *) ;
 int device_printf (int *,char*,...) ;
 scalar_t__ pci_read_config (int *,int ,int) ;
 scalar_t__ rman_get_size (int *) ;
 int viawd_event ;
 scalar_t__ viawd_read_4 (struct viawd_softc*,int ) ;
 int viawd_write_4 (struct viawd_softc*,int ,scalar_t__) ;
 int watchdog_list ;

__attribute__((used)) static int
viawd_attach(device_t dev)
{
 device_t sb_dev;
 struct viawd_softc *sc;
 uint32_t pmbase, reg;

 sc = device_get_softc(dev);
 sc->dev = dev;

 sb_dev = device_get_parent(dev);
 if (sb_dev == ((void*)0)) {
  device_printf(dev, "Can not find watchdog device.\n");
  goto fail;
 }
 sc->sb_dev = sb_dev;


 pmbase = pci_read_config(sb_dev, VIAWD_CONFIG_BASE, 4);
 if (pmbase == 0) {
  device_printf(dev,
      "Watchdog disabled in BIOS or hardware\n");
  goto fail;
 }


 sc->wd_rid = VIAWD_CONFIG_BASE;
 sc->wd_res = bus_alloc_resource_any(sb_dev, SYS_RES_MEMORY, &sc->wd_rid,
     RF_ACTIVE | RF_SHAREABLE);
 if (sc->wd_res == ((void*)0)) {
  device_printf(dev, "Unable to map watchdog memory\n");
  goto fail;
 }
 if (rman_get_size(sc->wd_res) < VIAWD_MEM_LEN) {
  device_printf(dev, "Bad size for watchdog memory: %#x\n",
      (unsigned)rman_get_size(sc->wd_res));
  goto fail;
 }


 reg = viawd_read_4(sc, VIAWD_MEM_CTRL);
 if (reg & VIAWD_MEM_CTRL_FIRED) {
  device_printf(dev,
      "ERROR: watchdog rebooted the system\n");

  viawd_write_4(sc, VIAWD_MEM_CTRL, reg);
 }


 sc->ev_tag = EVENTHANDLER_REGISTER(watchdog_list, viawd_event, sc, 0);

 return (0);
fail:
 if (sc->wd_res != ((void*)0))
  bus_release_resource(sb_dev, SYS_RES_MEMORY,
      sc->wd_rid, sc->wd_res);
 return (ENXIO);
}
