
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct altera_avgen_softc {int avg_width; int * avg_res; scalar_t__ avg_rid; int avg_unit; int avg_dev; } ;
typedef int device_t ;


 int ALTERA_AVALON_STR_DEVNAME ;
 int ALTERA_AVALON_STR_DEVUNIT ;
 int ALTERA_AVALON_STR_FILEIO ;
 int ALTERA_AVALON_STR_GEOMIO ;
 int ALTERA_AVALON_STR_MMAPIO ;
 int ALTERA_AVALON_STR_WIDTH ;
 int ENOENT ;
 int ENXIO ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 int altera_avgen_attach (struct altera_avgen_softc*,char const*,char const*,char const*,char const*,int) ;
 int * bus_alloc_resource_any (int ,int ,scalar_t__*,int ) ;
 int bus_release_resource (int ,int ,scalar_t__,int *) ;
 int device_get_name (int ) ;
 struct altera_avgen_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*,...) ;
 int resource_int_value (int ,int ,int ,int*) ;
 int resource_string_value (int ,int ,int ,char const**) ;

__attribute__((used)) static int
altera_avgen_nexus_attach(device_t dev)
{
 struct altera_avgen_softc *sc;
 const char *str_fileio, *str_geomio, *str_mmapio;
 const char *str_devname;
 int devunit, error;

 sc = device_get_softc(dev);
 sc->avg_dev = dev;
 sc->avg_unit = device_get_unit(dev);





 str_fileio = ((void*)0);
 str_geomio = ((void*)0);
 str_mmapio = ((void*)0);
 str_devname = ((void*)0);
 devunit = -1;
 sc->avg_width = 1;
 error = resource_int_value(device_get_name(dev), device_get_unit(dev),
     ALTERA_AVALON_STR_WIDTH, &sc->avg_width);
 if (error != 0 && error != ENOENT) {
  device_printf(dev, "invalid %s\n", ALTERA_AVALON_STR_WIDTH);
  return (error);
 }
 (void)resource_string_value(device_get_name(dev),
     device_get_unit(dev), ALTERA_AVALON_STR_FILEIO, &str_fileio);
 (void)resource_string_value(device_get_name(dev),
     device_get_unit(dev), ALTERA_AVALON_STR_GEOMIO, &str_geomio);
 (void)resource_string_value(device_get_name(dev),
     device_get_unit(dev), ALTERA_AVALON_STR_MMAPIO, &str_mmapio);
 (void)resource_string_value(device_get_name(dev),
     device_get_unit(dev), ALTERA_AVALON_STR_DEVNAME, &str_devname);
 (void)resource_int_value(device_get_name(dev), device_get_unit(dev),
     ALTERA_AVALON_STR_DEVUNIT, &devunit);


 sc->avg_rid = 0;
 sc->avg_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY,
     &sc->avg_rid, RF_ACTIVE);
 if (sc->avg_res == ((void*)0)) {
  device_printf(dev, "couldn't map memory\n");
  return (ENXIO);
 }
 error = altera_avgen_attach(sc, str_fileio, str_geomio, str_mmapio,
     str_devname, devunit);
 if (error != 0)
  bus_release_resource(dev, SYS_RES_MEMORY, sc->avg_rid,
      sc->avg_res);
 return (error);
}
