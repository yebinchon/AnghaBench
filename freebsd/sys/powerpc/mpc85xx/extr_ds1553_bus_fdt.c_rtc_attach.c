
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int tv_nsec; scalar_t__ tv_sec; } ;
struct ds1553_softc {int sc_mtx; int * res; int rid; int sc_bsh; int sc_bst; } ;
typedef int device_t ;


 int ENXIO ;
 int MTX_SPIN ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 scalar_t__ bootverbose ;
 int * bus_alloc_resource_any (int ,int ,int *,int ) ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bzero (struct ds1553_softc*,int) ;
 int clock_register (int ,int) ;
 struct ds1553_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int ds1553_attach (int ) ;
 int ds1553_gettime (int ,struct timespec*) ;
 int mtx_destroy (int *) ;
 int mtx_init (int *,char*,int *,int ) ;
 int rman_get_bushandle (int *) ;
 int rman_get_bustag (int *) ;

__attribute__((used)) static int
rtc_attach(device_t dev)
{
 struct timespec ts;
 struct ds1553_softc *sc;
 int error;

 sc = device_get_softc(dev);
 bzero(sc, sizeof(struct ds1553_softc));

 mtx_init(&sc->sc_mtx, "rtc_mtx", ((void*)0), MTX_SPIN);

 sc->res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &sc->rid,
     RF_ACTIVE);
 if (sc->res == ((void*)0)) {
  device_printf(dev, "cannot allocate resources\n");
  mtx_destroy(&sc->sc_mtx);
  return (ENXIO);
 }

 sc->sc_bst = rman_get_bustag(sc->res);
 sc->sc_bsh = rman_get_bushandle(sc->res);

 if ((error = ds1553_attach(dev)) != 0) {
  device_printf(dev, "cannot attach time of day clock\n");
  bus_release_resource(dev, SYS_RES_MEMORY, sc->rid, sc->res);
  mtx_destroy(&sc->sc_mtx);
  return (error);
 }

 clock_register(dev, 1000000);

 if (bootverbose) {
  ds1553_gettime(dev, &ts);
  device_printf(dev, "current time: %ld.%09ld\n",
      (long)ts.tv_sec, ts.tv_nsec);
 }

 return (0);
}
