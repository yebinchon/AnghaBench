
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int tv_nsec; scalar_t__ tv_sec; } ;
struct mk48txx_softc {int sc_year0; int sc_flag; int sc_mtx; int * sc_res; int * sc_model; } ;
typedef int device_t ;


 int ENXIO ;
 int MK48TXX_WDOG_ENABLE_WDS ;
 int MK48TXX_WDOG_REGISTER ;
 int MTX_DEF ;
 int OF_getproplen (int ,char*) ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 scalar_t__ bootverbose ;
 int * bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_release_resource (int ,int ,int,int *) ;
 struct mk48txx_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int mk48txx_attach (int ) ;
 scalar_t__ mk48txx_gettime (int ,struct timespec*) ;
 int mtx_destroy (int *) ;
 int mtx_init (int *,char*,int *,int ) ;
 int * ofw_bus_get_model (int ) ;
 int ofw_bus_get_node (int ) ;
 int sparc64_model ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static int
eeprom_attach(device_t dev)
{
 struct mk48txx_softc *sc;
 struct timespec ts;
 int error, rid;

 sc = device_get_softc(dev);

 mtx_init(&sc->sc_mtx, "eeprom_mtx", ((void*)0), MTX_DEF);

 rid = 0;
 sc->sc_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
     RF_ACTIVE);
 if (sc->sc_res == ((void*)0)) {
  device_printf(dev, "cannot allocate resources\n");
  error = ENXIO;
  goto fail_mtx;
 }

 if ((sc->sc_model = ofw_bus_get_model(dev)) == ((void*)0)) {
  device_printf(dev, "cannot determine model\n");
  error = ENXIO;
  goto fail_res;
 }


 sc->sc_year0 = 1968;

 sc->sc_flag = 0;
 if (OF_getproplen(ofw_bus_get_node(dev), "watchdog-enable") != -1 &&
     (strcmp(sparc64_model, "SUNW,Ultra-250") == 0 ||
     strcmp(sparc64_model, "SUNW,Ultra-4") == 0))
  sc->sc_flag |= MK48TXX_WDOG_REGISTER | MK48TXX_WDOG_ENABLE_WDS;
 if ((error = mk48txx_attach(dev)) != 0) {
  device_printf(dev, "cannot attach time of day clock\n");
  goto fail_res;
 }

 if (bootverbose) {
  if (mk48txx_gettime(dev, &ts) != 0)
   device_printf(dev, "invalid time");
  else
   device_printf(dev, "current time: %ld.%09ld\n",
       (long)ts.tv_sec, ts.tv_nsec);
 }

 return (0);

 fail_res:
 bus_release_resource(dev, SYS_RES_MEMORY, rid, sc->sc_res);
 fail_mtx:
 mtx_destroy(&sc->sc_mtx);

 return (error);
}
