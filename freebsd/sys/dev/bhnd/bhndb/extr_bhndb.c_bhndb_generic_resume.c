
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhndb_softc {struct bhndb_resources* bus_res; } ;
struct bhndb_resources {size_t dwa_count; struct bhndb_dw_alloc* dw_alloc; } ;
struct bhndb_dw_alloc {int target; int win; } ;
typedef int device_t ;


 int BHNDB_LOCK (struct bhndb_softc*) ;
 int BHNDB_SET_WINDOW_ADDR (int ,int ,int) ;
 int BHNDB_UNLOCK (struct bhndb_softc*) ;
 scalar_t__ bhndb_dw_is_free (struct bhndb_resources*,struct bhndb_dw_alloc*) ;
 int bus_generic_resume (int ) ;
 struct bhndb_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,int) ;

int
bhndb_generic_resume(device_t dev)
{
 struct bhndb_softc *sc;
 struct bhndb_resources *bus_res;
 struct bhndb_dw_alloc *dwa;
 int error;

 sc = device_get_softc(dev);
 bus_res = sc->bus_res;



 BHNDB_LOCK(sc);
 error = 0;
 for (size_t i = 0; i < bus_res->dwa_count; i++) {
  dwa = &bus_res->dw_alloc[i];


  if (bhndb_dw_is_free(bus_res, dwa) && dwa->target == 0x0)
   continue;



  error = BHNDB_SET_WINDOW_ADDR(dev, dwa->win, dwa->target);
  if (error)
   break;
 }
 BHNDB_UNLOCK(sc);


 if (error) {
  device_printf(dev, "Unable to restore hardware configuration; "
      "cannot resume: %d\n", error);
  return (error);
 }

 return (bus_generic_resume(dev));
}
