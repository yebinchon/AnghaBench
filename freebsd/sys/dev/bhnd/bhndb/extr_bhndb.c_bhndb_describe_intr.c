
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
 int BUS_DESCRIBE_INTR (int ,int ,int ,int ,char const*) ;
 struct bhndb_intr_handler* bhndb_find_intr_handler (int ,void*) ;
 int device_get_nameunit (int ) ;
 int device_get_parent (int ) ;
 struct bhndb_softc* device_get_softc (int ) ;
 int panic (char*,int ,void*) ;

__attribute__((used)) static int
bhndb_describe_intr(device_t dev, device_t child, struct resource *irq,
    void *cookie, const char *descr)
{
 struct bhndb_softc *sc;
 struct bhndb_intr_handler *ih;
 struct bhndb_intr_isrc *isrc;

 sc = device_get_softc(dev);




 BHNDB_LOCK(sc);

 ih = bhndb_find_intr_handler(sc->bus_res, cookie);
 if (ih == ((void*)0)) {
  panic("%s requested invalid cookiep %p",
      device_get_nameunit(child), cookie);
 }

 isrc = ih->ih_isrc;

 BHNDB_UNLOCK(sc);


 return (BUS_DESCRIBE_INTR(device_get_parent(isrc->is_owner),
     isrc->is_owner, isrc->is_res, ih->ih_cookiep, descr));
}
