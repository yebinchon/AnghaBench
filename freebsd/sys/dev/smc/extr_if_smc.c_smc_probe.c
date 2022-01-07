
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint16_t ;
struct smc_softc {scalar_t__ smc_usemem; } ;
struct resource {int dummy; } ;
typedef int device_t ;


 int BAR ;
 size_t BAR_ADDRESS (size_t) ;
 int BSR ;
 size_t BSR_IDENTIFY ;
 size_t BSR_IDENTIFY_MASK ;
 int ENXIO ;
 int REV ;
 size_t REV_CHIP_MASK ;
 size_t REV_CHIP_SHIFT ;
 int RF_ACTIVE ;
 int SYS_RES_IOPORT ;
 int SYS_RES_MEMORY ;
 scalar_t__ bootverbose ;
 struct resource* bus_alloc_resource_anywhere (int ,int,int*,int,int ) ;
 size_t bus_read_2 (struct resource*,int ) ;
 int bus_release_resource (int ,int,int,struct resource*) ;
 int bus_write_2 (struct resource*,int ,int) ;
 struct smc_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int device_set_desc (int ,int *) ;
 size_t rman_get_start (struct resource*) ;
 int ** smc_chip_ids ;

int
smc_probe(device_t dev)
{
 int rid, type, error;
 uint16_t val;
 struct smc_softc *sc;
 struct resource *reg;

 sc = device_get_softc(dev);
 rid = 0;
 type = SYS_RES_IOPORT;
 error = 0;

 if (sc->smc_usemem)
  type = SYS_RES_MEMORY;

 reg = bus_alloc_resource_anywhere(dev, type, &rid, 16, RF_ACTIVE);
 if (reg == ((void*)0)) {
  if (bootverbose)
   device_printf(dev,
       "could not allocate I/O resource for probe\n");
  return (ENXIO);
 }


 val = bus_read_2(reg, BSR);
 if ((val & BSR_IDENTIFY_MASK) != BSR_IDENTIFY) {
  if (bootverbose)
   device_printf(dev, "identification value not in BSR\n");
  error = ENXIO;
  goto done;
 }





 bus_write_2(reg, BSR, 0);
 val = bus_read_2(reg, BSR);
 if ((val & BSR_IDENTIFY_MASK) != BSR_IDENTIFY) {
  if (bootverbose)
   device_printf(dev,
       "identification value not in BSR after write\n");
  error = ENXIO;
  goto done;
 }
 bus_write_2(reg, BSR, 3);
 val = bus_read_2(reg, REV);
 val = (val & REV_CHIP_MASK) >> REV_CHIP_SHIFT;
 if (smc_chip_ids[val] == ((void*)0)) {
  if (bootverbose)
   device_printf(dev, "Unknown chip revision: %d\n", val);
  error = ENXIO;
  goto done;
 }

 device_set_desc(dev, smc_chip_ids[val]);

done:
 bus_release_resource(dev, type, rid, reg);
 return (error);
}
