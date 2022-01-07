
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct make_dev_args {int mda_mode; struct etherswitch_softc* mda_si_drv1; int mda_gid; int mda_uid; int * mda_devsw; } ;
struct etherswitch_softc {int sc_devnode; int sc_dev; } ;
typedef int device_t ;


 int ENXIO ;
 int GID_WHEEL ;
 int UID_ROOT ;
 struct etherswitch_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*) ;
 int etherswitch_cdevsw ;
 int make_dev_args_init (struct make_dev_args*) ;
 int make_dev_s (struct make_dev_args*,int *,char*,int ) ;

__attribute__((used)) static int
etherswitch_attach(device_t dev)
{
 int err;
 struct etherswitch_softc *sc;
 struct make_dev_args devargs;

 sc = device_get_softc(dev);
 sc->sc_dev = dev;
 make_dev_args_init(&devargs);
 devargs.mda_devsw = &etherswitch_cdevsw;
 devargs.mda_uid = UID_ROOT;
 devargs.mda_gid = GID_WHEEL;
 devargs.mda_mode = 0600;
 devargs.mda_si_drv1 = sc;
 err = make_dev_s(&devargs, &sc->sc_devnode, "etherswitch%d",
     device_get_unit(dev));
 if (err != 0) {
  device_printf(dev, "failed to create character device\n");
  return (ENXIO);
 }

 return (0);
}
