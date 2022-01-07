
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct bhnd_sprom_softc {int * store; int dev; } ;
struct bhnd_resource {int res; } ;
struct bhnd_nvram_io {int dummy; } ;
typedef int device_t ;
typedef scalar_t__ bus_size_t ;


 int BHND_SERVICE_NVRAM ;
 scalar_t__ BUS_SPACE_MAXSIZE ;
 int ENXIO ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 struct bhnd_resource* bhnd_alloc_resource_any (int ,int ,int*,int ) ;
 int bhnd_nvram_io_free (struct bhnd_nvram_io*) ;
 struct bhnd_nvram_io* bhnd_nvram_iores_new (struct bhnd_resource*,scalar_t__,scalar_t__,int) ;
 int bhnd_nvram_sprom_class ;
 int bhnd_nvram_store_free (int *) ;
 int bhnd_nvram_store_parse_new (int **,struct bhnd_nvram_io*,int *) ;
 int bhnd_register_provider (int ,int ) ;
 int bhnd_release_resource (int ,int ,int,struct bhnd_resource*) ;
 struct bhnd_sprom_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 scalar_t__ rman_get_size (int ) ;

int
bhnd_sprom_attach(device_t dev, bus_size_t offset)
{
 struct bhnd_sprom_softc *sc;
 struct bhnd_nvram_io *io;
 struct bhnd_resource *r;
 bus_size_t r_size, sprom_size;
 int rid;
 int error;

 sc = device_get_softc(dev);
 sc->dev = dev;
 sc->store = ((void*)0);

 io = ((void*)0);
 r = ((void*)0);


 rid = 0;
 r = bhnd_alloc_resource_any(dev, SYS_RES_MEMORY, &rid, RF_ACTIVE);
 if (r == ((void*)0)) {
  device_printf(dev, "failed to allocate resources\n");
  return (ENXIO);
 }


 r_size = rman_get_size(r->res);
 if (r_size <= offset || (r_size - offset) > BUS_SPACE_MAXSIZE) {
  device_printf(dev, "invalid sprom offset\n");
  error = ENXIO;
  goto failed;
 }

 sprom_size = r_size - offset;



 io = bhnd_nvram_iores_new(r, offset, sprom_size, sizeof(uint16_t));
 if (io == ((void*)0)) {
  error = ENXIO;
  goto failed;
 }


 error = bhnd_nvram_store_parse_new(&sc->store, io,
     &bhnd_nvram_sprom_class);
 if (error)
  goto failed;


 bhnd_nvram_io_free(io);
 bhnd_release_resource(dev, SYS_RES_MEMORY, rid, r);

 io = ((void*)0);
 r = ((void*)0);


 if ((error = bhnd_register_provider(dev, BHND_SERVICE_NVRAM))) {
  device_printf(dev, "failed to register NVRAM provider: %d\n",
      error);
  goto failed;
 }

 return (0);

failed:

 if (io != ((void*)0))
  bhnd_nvram_io_free(io);

 if (r != ((void*)0))
  bhnd_release_resource(dev, SYS_RES_MEMORY, rid, r);

 if (sc->store != ((void*)0))
  bhnd_nvram_store_free(sc->store);

 return (error);
}
