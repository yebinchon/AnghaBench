
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct bhndb_softc {int bus_res; } ;
struct bhndb_intr_isrc {int is_res; int is_owner; } ;
struct bhndb_intr_handler {int ih_cookiep; } ;
typedef int driver_intr_t ;
typedef int driver_filter_t ;
typedef int device_t ;


 int BHNDB_LOCK (struct bhndb_softc*) ;
 int BHNDB_MAP_INTR_ISRC (int ,struct resource*,struct bhndb_intr_isrc**) ;
 int BHNDB_UNLOCK (struct bhndb_softc*) ;
 int ENOMEM ;
 struct bhndb_intr_handler* bhndb_alloc_intr_handler (int ,struct resource*,struct bhndb_intr_isrc*) ;
 int bhndb_free_intr_handler (struct bhndb_intr_handler*) ;
 int bhndb_register_intr_handler (int ,struct bhndb_intr_handler*) ;
 int bus_setup_intr (int ,int ,int,int ,int ,void*,int *) ;
 struct bhndb_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,int) ;

__attribute__((used)) static int
bhndb_setup_intr(device_t dev, device_t child, struct resource *r,
    int flags, driver_filter_t filter, driver_intr_t handler, void *arg,
    void **cookiep)
{
 struct bhndb_softc *sc;
 struct bhndb_intr_isrc *isrc;
 struct bhndb_intr_handler *ih;
 int error;

 sc = device_get_softc(dev);


 if ((error = BHNDB_MAP_INTR_ISRC(dev, r, &isrc))) {
  device_printf(dev, "failed to fetch isrc: %d\n", error);
  return (error);
 }


 ih = bhndb_alloc_intr_handler(child, r, isrc);
 if (ih == ((void*)0))
  return (ENOMEM);


 error = bus_setup_intr(isrc->is_owner, isrc->is_res, flags, filter,
     handler, arg, &ih->ih_cookiep);
 if (error) {
  bhndb_free_intr_handler(ih);
  return (error);
 }


 BHNDB_LOCK(sc);
 bhndb_register_intr_handler(sc->bus_res, ih);
 BHNDB_UNLOCK(sc);


 *cookiep = ih;
 return (0);
}
