
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct bhndb_softc {int parent_dev; } ;
typedef int device_t ;


 int BUS_ACTIVATE_RESOURCE (int ,int ,int,int,struct resource*) ;
 int * bhndb_get_rman (struct bhndb_softc*,int ,int) ;
 int bhndb_try_activate_resource (struct bhndb_softc*,int ,int,int,struct resource*,int *) ;
 int device_get_parent (int ) ;
 struct bhndb_softc* device_get_softc (int ) ;

__attribute__((used)) static int
bhndb_activate_resource(device_t dev, device_t child, int type, int rid,
    struct resource *r)
{
 struct bhndb_softc *sc = device_get_softc(dev);



 if (bhndb_get_rman(sc, child, type) == ((void*)0)) {
  return (BUS_ACTIVATE_RESOURCE(device_get_parent(sc->parent_dev),
      child, type, rid, r));
 }

 return (bhndb_try_activate_resource(sc, child, type, rid, r, ((void*)0)));
}
