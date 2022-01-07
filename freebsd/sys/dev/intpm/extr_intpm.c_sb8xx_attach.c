
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
struct resource {int dummy; } ;
struct intsmb_softc {int io_rid; int poll; int * io_res; } ;
typedef int device_t ;


 scalar_t__ AMDCZ49_SMBUS_REVID ;
 scalar_t__ AMDCZ_SMBUS_DEVID ;
 scalar_t__ AMDFCH41_PM_DECODE_EN0 ;
 scalar_t__ AMDFCH41_PM_DECODE_EN1 ;
 int AMDFCH41_SMBUS_EN ;
 scalar_t__ AMDFCH41_SMBUS_REVID ;
 scalar_t__ AMDFCH_SMBUS_DEVID ;
 scalar_t__ AMDSB8_PM_SMBUS_EN ;
 int AMDSB8_SMBUS_ADDR_MASK ;
 int AMDSB8_SMBUS_EN ;
 int AMDSB_PMIO_INDEX ;
 int const AMDSB_PMIO_WIDTH ;
 scalar_t__ AMDSB_SMBUS_DEVID ;
 int ENXIO ;
 int RF_ACTIVE ;
 int SYS_RES_IOPORT ;
 int amd_pmio_read (struct resource*,scalar_t__) ;
 void* bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_delete_resource (int ,int ,int) ;
 int bus_release_resource (int ,int ,int,struct resource*) ;
 int bus_set_resource (int ,int ,int,int,int const) ;
 struct intsmb_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 scalar_t__ pci_get_devid (int ) ;
 scalar_t__ pci_get_revid (int ) ;

__attribute__((used)) static int
sb8xx_attach(device_t dev)
{
 static const int AMDSB_SMBIO_WIDTH = 0x10;
 struct intsmb_softc *sc;
 struct resource *res;
 uint32_t devid;
 uint8_t revid;
 uint16_t addr;
 int rid;
 int rc;
 bool enabled;

 sc = device_get_softc(dev);
 rid = 0;
 rc = bus_set_resource(dev, SYS_RES_IOPORT, rid, AMDSB_PMIO_INDEX,
     AMDSB_PMIO_WIDTH);
 if (rc != 0) {
  device_printf(dev, "bus_set_resource for PM IO failed\n");
  return (ENXIO);
 }
 res = bus_alloc_resource_any(dev, SYS_RES_IOPORT, &rid,
     RF_ACTIVE);
 if (res == ((void*)0)) {
  device_printf(dev, "bus_alloc_resource for PM IO failed\n");
  return (ENXIO);
 }

 devid = pci_get_devid(dev);
 revid = pci_get_revid(dev);
 if (devid == AMDSB_SMBUS_DEVID ||
     (devid == AMDFCH_SMBUS_DEVID && revid < AMDFCH41_SMBUS_REVID) ||
     (devid == AMDCZ_SMBUS_DEVID && revid < AMDCZ49_SMBUS_REVID)) {
  addr = amd_pmio_read(res, AMDSB8_PM_SMBUS_EN + 1);
  addr <<= 8;
  addr |= amd_pmio_read(res, AMDSB8_PM_SMBUS_EN);
  enabled = (addr & AMDSB8_SMBUS_EN) != 0;
  addr &= AMDSB8_SMBUS_ADDR_MASK;
 } else {
  addr = amd_pmio_read(res, AMDFCH41_PM_DECODE_EN0);
  enabled = (addr & AMDFCH41_SMBUS_EN) != 0;
  addr = amd_pmio_read(res, AMDFCH41_PM_DECODE_EN1);
  addr <<= 8;
 }

 bus_release_resource(dev, SYS_RES_IOPORT, rid, res);
 bus_delete_resource(dev, SYS_RES_IOPORT, rid);

 if (!enabled) {
  device_printf(dev, "SB8xx/SB9xx/FCH SMBus not enabled\n");
  return (ENXIO);
 }

 sc->io_rid = 0;
 rc = bus_set_resource(dev, SYS_RES_IOPORT, sc->io_rid, addr,
     AMDSB_SMBIO_WIDTH);
 if (rc != 0) {
  device_printf(dev, "bus_set_resource for SMBus IO failed\n");
  return (ENXIO);
 }
 sc->io_res = bus_alloc_resource_any(dev, SYS_RES_IOPORT, &sc->io_rid,
     RF_ACTIVE);
 if (sc->io_res == ((void*)0)) {
  device_printf(dev, "Could not allocate I/O space\n");
  return (ENXIO);
 }
 sc->poll = 1;
 return (0);
}
