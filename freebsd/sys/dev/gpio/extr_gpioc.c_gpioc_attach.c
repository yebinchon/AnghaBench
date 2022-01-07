
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct make_dev_args {int mda_mode; struct gpioc_softc* mda_si_drv1; int mda_gid; int mda_uid; int * mda_devsw; } ;
struct gpioc_softc {int sc_unit; int sc_ctl_dev; int sc_pdev; int sc_dev; } ;
typedef int device_t ;


 int ENXIO ;
 int GID_WHEEL ;
 int UID_ROOT ;
 int device_get_parent (int ) ;
 struct gpioc_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int gpioc_cdevsw ;
 int make_dev_args_init (struct make_dev_args*) ;
 int make_dev_s (struct make_dev_args*,int *,char*,int) ;
 int printf (char*,int) ;

__attribute__((used)) static int
gpioc_attach(device_t dev)
{
 int err;
 struct gpioc_softc *sc;
 struct make_dev_args devargs;

 sc = device_get_softc(dev);
 sc->sc_dev = dev;
 sc->sc_pdev = device_get_parent(dev);
 sc->sc_unit = device_get_unit(dev);
 make_dev_args_init(&devargs);
 devargs.mda_devsw = &gpioc_cdevsw;
 devargs.mda_uid = UID_ROOT;
 devargs.mda_gid = GID_WHEEL;
 devargs.mda_mode = 0600;
 devargs.mda_si_drv1 = sc;
 err = make_dev_s(&devargs, &sc->sc_ctl_dev, "gpioc%d", sc->sc_unit);
 if (err != 0) {
  printf("Failed to create gpioc%d", sc->sc_unit);
  return (ENXIO);
 }

 return (0);
}
