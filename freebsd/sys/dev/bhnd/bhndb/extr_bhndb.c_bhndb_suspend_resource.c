
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct bhndb_softc {int bus_res; } ;
struct bhndb_dw_alloc {int dummy; } ;
typedef int device_t ;


 scalar_t__ BHNDB_DEBUG (int ) ;
 int BHNDB_LOCK (struct bhndb_softc*) ;
 int BHNDB_UNLOCK (struct bhndb_softc*) ;
 int PRIO ;
 int SYS_RES_MEMORY ;
 struct bhndb_dw_alloc* bhndb_dw_find_resource (int ,struct resource*) ;
 int bhndb_dw_release (int ,struct bhndb_dw_alloc*,struct resource*) ;
 struct bhndb_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,int,int ,int ) ;
 int rman_get_size (struct resource*) ;
 int rman_get_start (struct resource*) ;

__attribute__((used)) static void
bhndb_suspend_resource(device_t dev, device_t child, int type,
    struct resource *r)
{
 struct bhndb_softc *sc;
 struct bhndb_dw_alloc *dwa;

 sc = device_get_softc(dev);


 if (type != SYS_RES_MEMORY)
  return;

 BHNDB_LOCK(sc);
 dwa = bhndb_dw_find_resource(sc->bus_res, r);
 if (dwa == ((void*)0)) {
  BHNDB_UNLOCK(sc);
  return;
 }

 if (BHNDB_DEBUG(PRIO))
  device_printf(child, "suspend resource type=%d 0x%jx+0x%jx\n",
      type, rman_get_start(r), rman_get_size(r));


 bhndb_dw_release(sc->bus_res, dwa, r);
 BHNDB_UNLOCK(sc);
}
