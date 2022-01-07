
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rman {int dummy; } ;
struct resource {int dummy; } ;
struct bhndb_softc {int bus_res; int parent_dev; } ;
typedef scalar_t__ rman_res_t ;
typedef int device_t ;


 int BHNDB_LOCK (struct bhndb_softc*) ;
 int BHNDB_UNLOCK (struct bhndb_softc*) ;
 int BUS_ADJUST_RESOURCE (int ,int ,int,struct resource*,scalar_t__,scalar_t__) ;
 int EINVAL ;
 int ENXIO ;
 int RF_ACTIVE ;
 int bhndb_find_resource_limits (int ,int,struct resource*,scalar_t__*,scalar_t__*) ;
 struct rman* bhndb_get_rman (struct bhndb_softc*,int ,int) ;
 int device_get_parent (int ) ;
 struct bhndb_softc* device_get_softc (int ) ;
 int rman_adjust_resource (struct resource*,scalar_t__,scalar_t__) ;
 int rman_get_flags (struct resource*) ;
 int rman_is_region_manager (struct resource*,struct rman*) ;

__attribute__((used)) static int
bhndb_adjust_resource(device_t dev, device_t child, int type,
    struct resource *r, rman_res_t start, rman_res_t end)
{
 struct bhndb_softc *sc;
 struct rman *rm;
 rman_res_t mstart, mend;
 int error;

 sc = device_get_softc(dev);
 error = 0;



 rm = bhndb_get_rman(sc, child, type);
 if (rm == ((void*)0)) {
  return (BUS_ADJUST_RESOURCE(device_get_parent(sc->parent_dev),
      child, type, r, start, end));
 }


 if (end <= start)
  return (EINVAL);

 if (!rman_is_region_manager(r, rm))
  return (ENXIO);

 BHNDB_LOCK(sc);


 if (!(rman_get_flags(r) & RF_ACTIVE))
  goto done;


 error = bhndb_find_resource_limits(sc->bus_res, type, r, &mstart,
     &mend);
 if (error)
  goto done;

 if (start < mstart || end > mend) {
  error = EINVAL;
  goto done;
 }


done:
 if (!error)
  error = rman_adjust_resource(r, start, end);

 BHNDB_UNLOCK(sc);
 return (error);
}
