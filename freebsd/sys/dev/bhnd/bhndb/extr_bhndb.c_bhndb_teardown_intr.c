
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct bhndb_softc {int bus_res; } ;
struct bhndb_intr_isrc {int is_res; int is_owner; } ;
struct bhndb_intr_handler {int ih_cookiep; struct bhndb_intr_isrc* ih_isrc; } ;
typedef int device_t ;


 int BHNDB_LOCK (struct bhndb_softc*) ;
 int BHNDB_UNLOCK (struct bhndb_softc*) ;
 int bhndb_deregister_intr_handler (int ,struct bhndb_intr_handler*) ;
 struct bhndb_intr_handler* bhndb_find_intr_handler (int ,void*) ;
 int bhndb_free_intr_handler (struct bhndb_intr_handler*) ;
 int bhndb_register_intr_handler (int ,struct bhndb_intr_handler*) ;
 int bus_teardown_intr (int ,int ,int ) ;
 int device_get_nameunit (int ) ;
 struct bhndb_softc* device_get_softc (int ) ;
 int panic (char*,int ,void*) ;

__attribute__((used)) static int
bhndb_teardown_intr(device_t dev, device_t child, struct resource *r,
    void *cookiep)
{
 struct bhndb_softc *sc;
 struct bhndb_intr_handler *ih;
 struct bhndb_intr_isrc *isrc;
 int error;

 sc = device_get_softc(dev);


 BHNDB_LOCK(sc);

 ih = bhndb_find_intr_handler(sc->bus_res, cookiep);
 if (ih == ((void*)0)) {
  panic("%s requested teardown of invalid cookiep %p",
      device_get_nameunit(child), cookiep);
 }

 bhndb_deregister_intr_handler(sc->bus_res, ih);

 BHNDB_UNLOCK(sc);


 isrc = ih->ih_isrc;
 error = bus_teardown_intr(isrc->is_owner, isrc->is_res, ih->ih_cookiep);
 if (error) {


  BHNDB_LOCK(sc);
  bhndb_register_intr_handler(sc->bus_res, ih);
  BHNDB_UNLOCK(sc);

  return (error);
 }


 bhndb_free_intr_handler(ih);
 return (0);
}
