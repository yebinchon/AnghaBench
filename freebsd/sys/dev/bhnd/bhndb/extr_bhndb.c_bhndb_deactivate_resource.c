
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rman {int dummy; } ;
struct resource {int dummy; } ;
struct bhndb_softc {int bus_res; int parent_dev; } ;
struct bhndb_dw_alloc {int dummy; } ;
typedef int device_t ;


 int BHNDB_ADDRSPACE_BRIDGED ;
 int BHNDB_LOCK (struct bhndb_softc*) ;
 int BHNDB_UNLOCK (struct bhndb_softc*) ;
 int BUS_DEACTIVATE_RESOURCE (int ,int ,int,int,struct resource*) ;
 int ENXIO ;


 struct bhndb_dw_alloc* bhndb_dw_find_resource (int ,struct resource*) ;
 int bhndb_dw_release (int ,struct bhndb_dw_alloc*,struct resource*) ;
 int bhndb_get_addrspace (struct bhndb_softc*,int ) ;
 struct rman* bhndb_get_rman (struct bhndb_softc*,int ,int) ;
 int device_get_parent (int ) ;
 struct bhndb_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,int) ;
 int rman_deactivate_resource (struct resource*) ;

__attribute__((used)) static int
bhndb_deactivate_resource(device_t dev, device_t child, int type,
    int rid, struct resource *r)
{
 struct bhndb_dw_alloc *dwa;
 struct bhndb_softc *sc;
 struct rman *rm;
 int error;

 sc = device_get_softc(dev);



 rm = bhndb_get_rman(sc, child, type);
 if (rm == ((void*)0)) {
  return (BUS_DEACTIVATE_RESOURCE(
      device_get_parent(sc->parent_dev), child, type, rid, r));
 }


 if ((error = rman_deactivate_resource(r)))
  return (error);

 switch (type) {
 case 129:

  return (0);

 case 128:

  if (bhndb_get_addrspace(sc, child) == BHNDB_ADDRSPACE_BRIDGED) {
   BHNDB_LOCK(sc);
   dwa = bhndb_dw_find_resource(sc->bus_res, r);
   if (dwa != ((void*)0))
    bhndb_dw_release(sc->bus_res, dwa, r);
   BHNDB_UNLOCK(sc);
  }

  return (0);

 default:
  device_printf(dev, "unsupported resource type %d\n", type);
  return (ENXIO);
 }
}
