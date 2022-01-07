
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int tv_nsec; scalar_t__ tv_sec; } ;
struct resource {int dummy; } ;
struct mc146818_softc {int sc_mtx; int sc_setcent; int sc_getcent; int sc_flag; scalar_t__ sc_year0; int (* sc_mcwrite ) (int ,int ,int) ;int sc_mcread; int sc_bsh; int sc_bst; } ;
typedef int device_t ;


 int ENXIO ;
 int MC146818_NO_CENT_ADJUST ;
 int MC_REGA ;
 int MTX_SPIN ;
 int PC87317_APC ;
 int PC87317_APC_CADDR ;
 int PC87317_APC_CADDR_BANK1 ;
 int PC87317_COMMON ;
 int PC87317_RTC_CR ;
 int RF_ACTIVE ;
 int RTC_READ ;
 int RTC_WRITE (int ,int ,int) ;
 int SYS_RES_IOPORT ;
 int SYS_RES_MEMORY ;
 scalar_t__ bootverbose ;
 struct resource* bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_release_resource (int ,int ,int,struct resource*) ;
 int device_get_name (int ) ;
 int device_get_parent (int ) ;
 struct mc146818_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int mc146818_attach (int ) ;
 scalar_t__ mc146818_gettime (int ,struct timespec*) ;
 int mtx_destroy (int *) ;
 int mtx_init (int *,char*,int *,int ) ;
 int pc87317_getcent ;
 int pc87317_setcent ;
 int rman_get_bushandle (struct resource*) ;
 int rman_get_bustag (struct resource*) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static int
rtc_attach(device_t dev)
{
 struct timespec ts;
 struct mc146818_softc *sc;
 struct resource *res;
 int ebus, error, rid;

 sc = device_get_softc(dev);

 mtx_init(&sc->sc_mtx, "rtc_mtx", ((void*)0), MTX_SPIN);

 ebus = 0;
 if (strcmp(device_get_name(device_get_parent(dev)), "ebus") == 0)
  ebus = 1;

 rid = 0;
 res = bus_alloc_resource_any(dev, ebus ? SYS_RES_MEMORY :
     SYS_RES_IOPORT, &rid, RF_ACTIVE);
 if (res == ((void*)0)) {
  device_printf(dev, "cannot allocate resources\n");
  error = ENXIO;
  goto fail_mtx;
 }
 sc->sc_bst = rman_get_bustag(res);
 sc->sc_bsh = rman_get_bushandle(res);

 sc->sc_mcread = RTC_READ;
 sc->sc_mcwrite = RTC_WRITE;

 sc->sc_year0 = 0;




 sc->sc_flag = MC146818_NO_CENT_ADJUST;
 if (ebus) {




  RTC_WRITE(dev, MC_REGA, PC87317_APC);
  RTC_WRITE(dev, PC87317_APC_CADDR, PC87317_APC_CADDR_BANK1 |
      PC87317_RTC_CR);
  RTC_WRITE(dev, MC_REGA, PC87317_COMMON);
  sc->sc_getcent = pc87317_getcent;
  sc->sc_setcent = pc87317_setcent;
 }
 if ((error = mc146818_attach(dev)) != 0) {
  device_printf(dev, "cannot attach time of day clock\n");
  goto fail_res;
 }

 if (bootverbose) {
  if (mc146818_gettime(dev, &ts) != 0)
   device_printf(dev, "invalid time");
  else
   device_printf(dev, "current time: %ld.%09ld\n",
       (long)ts.tv_sec, ts.tv_nsec);
 }

 return (0);

 fail_res:
 bus_release_resource(dev, ebus ? SYS_RES_MEMORY : SYS_RES_IOPORT, rid,
     res);
 fail_mtx:
 mtx_destroy(&sc->sc_mtx);

 return (error);
}
