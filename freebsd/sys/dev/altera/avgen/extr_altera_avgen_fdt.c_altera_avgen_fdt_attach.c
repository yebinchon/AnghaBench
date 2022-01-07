
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct altera_avgen_softc {int avg_width; int * avg_res; scalar_t__ avg_rid; int avg_unit; int avg_dev; } ;
typedef int phandle_t ;
typedef void* pcell_t ;
typedef int device_t ;
typedef int cell ;


 int ENXIO ;
 scalar_t__ OF_getprop (int ,char*,void**,int) ;
 int OF_getprop_alloc (int ,char*,void**) ;
 int OF_prop_free (char*) ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 int altera_avgen_attach (struct altera_avgen_softc*,char*,char*,char*,char*,int) ;
 int * bus_alloc_resource_any (int ,int ,scalar_t__*,int ) ;
 int bus_release_resource (int ,int ,scalar_t__,int *) ;
 struct altera_avgen_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*) ;
 int ofw_bus_get_node (int ) ;

__attribute__((used)) static int
altera_avgen_fdt_attach(device_t dev)
{
 struct altera_avgen_softc *sc;
 char *str_fileio, *str_geomio, *str_mmapio;
 char *str_devname;
 phandle_t node;
 pcell_t cell;
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
 node = ofw_bus_get_node(dev);
 if (OF_getprop(node, "sri-cambridge,width", &cell, sizeof(cell)) > 0)
  sc->avg_width = cell;
 (void)OF_getprop_alloc(node, "sri-cambridge,fileio",
     (void **)&str_fileio);
 (void)OF_getprop_alloc(node, "sri-cambridge,geomio",
     (void **)&str_geomio);
 (void)OF_getprop_alloc(node, "sri-cambridge,mmapio",
     (void **)&str_mmapio);
 (void)OF_getprop_alloc(node, "sri-cambridge,devname",
     (void **)&str_devname);
 if (OF_getprop(node, "sri-cambridge,devunit", &cell, sizeof(cell)) > 0)
  devunit = cell;


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
 if (str_fileio != ((void*)0))
  OF_prop_free(str_fileio);
 if (str_geomio != ((void*)0))
  OF_prop_free(str_geomio);
 if (str_mmapio != ((void*)0))
  OF_prop_free(str_mmapio);
 if (str_devname != ((void*)0))
  OF_prop_free(str_devname);
 return (error);
}
