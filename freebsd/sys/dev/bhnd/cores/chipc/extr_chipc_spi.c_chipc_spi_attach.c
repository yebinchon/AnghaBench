
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chipc_spi_softc {int sc_rid; int sc_flash_rid; int * sc_flash_res; int * sc_res; } ;
struct chipc_caps {int flash_type; } ;
typedef int * device_t ;


 struct chipc_caps* BHND_CHIPC_GET_CAPS (int ) ;
 int * BUS_ADD_CHILD (int *,int ,char const*,int) ;
 int ENXIO ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 void* bus_alloc_resource_any (int *,int ,int*,int ) ;
 int bus_generic_attach (int *) ;
 int bus_release_resource (int *,int ,int,int *) ;
 int chipc_register_slicer (int ) ;
 char* chipc_sflash_device_name (int ) ;
 int * device_add_child (int *,char*,int) ;
 int device_delete_children (int *) ;
 int device_get_parent (int *) ;
 struct chipc_spi_softc* device_get_softc (int *) ;
 int device_printf (int *,char*,...) ;
 int device_probe_and_attach (int *) ;

__attribute__((used)) static int
chipc_spi_attach(device_t dev)
{
 struct chipc_spi_softc *sc;
 struct chipc_caps *ccaps;
 device_t flash_dev;
 device_t spibus;
 const char *flash_name;
 int error;

 sc = device_get_softc(dev);


 sc->sc_rid = 1;
 sc->sc_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &sc->sc_rid,
     RF_ACTIVE);
 if (sc->sc_res == ((void*)0)) {
  device_printf(dev, "failed to allocate device registers\n");
  return (ENXIO);
 }


 sc->sc_flash_rid = 0;
 sc->sc_flash_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY,
     &sc->sc_flash_rid, RF_ACTIVE);
 if (sc->sc_flash_res == ((void*)0)) {
  device_printf(dev, "failed to allocate flash region\n");
  error = ENXIO;
  goto failed;
 }







 if ((spibus = device_add_child(dev, "spibus", -1)) == ((void*)0)) {
  device_printf(dev, "failed to add spibus\n");
  error = ENXIO;
  goto failed;
 }



 if ((error = bus_generic_attach(dev)))
  goto failed;


 ccaps = BHND_CHIPC_GET_CAPS(device_get_parent(dev));
 flash_name = chipc_sflash_device_name(ccaps->flash_type);
 if (flash_name != ((void*)0)) {
  flash_dev = BUS_ADD_CHILD(spibus, 0, flash_name, -1);
  if (flash_dev == ((void*)0)) {
   device_printf(dev, "failed to add %s\n", flash_name);
   error = ENXIO;
   goto failed;
  }

  chipc_register_slicer(ccaps->flash_type);

  if ((error = device_probe_and_attach(flash_dev))) {
   device_printf(dev, "failed to attach %s: %d\n",
       flash_name, error);
   goto failed;
  }
 }

 return (0);

failed:
 device_delete_children(dev);

 if (sc->sc_res != ((void*)0))
  bus_release_resource(dev, SYS_RES_MEMORY, sc->sc_rid,
      sc->sc_res);

 if (sc->sc_flash_res != ((void*)0))
  bus_release_resource(dev, SYS_RES_MEMORY, sc->sc_flash_rid,
      sc->sc_flash_res);

 return (error);
}
