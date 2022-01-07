
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwmc_softc {int chan; int cdev; int dev; } ;
struct make_dev_args {int mda_flags; int mda_mode; struct pwmc_softc* mda_si_drv1; int mda_gid; int mda_uid; int * mda_devsw; } ;
typedef int device_t ;


 int GID_OPERATOR ;
 int MAKEDEV_CHECKNAME ;
 int MAKEDEV_WAITOK ;
 int UID_ROOT ;
 int device_get_parent (int ) ;
 struct pwmc_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*) ;
 int make_dev_args_init (struct make_dev_args*) ;
 int make_dev_s (struct make_dev_args*,int *,char*,int ,int ) ;
 int pwm_cdevsw ;
 int pwmbus_get_channel (int ,int *) ;
 int pwmc_setup_label (struct pwmc_softc*) ;

__attribute__((used)) static int
pwmc_attach(device_t dev)
{
 struct pwmc_softc *sc;
 struct make_dev_args args;
 int error;

 sc = device_get_softc(dev);
 sc->dev = dev;

 if ((error = pwmbus_get_channel(dev, &sc->chan)) != 0)
  return (error);

 make_dev_args_init(&args);
 args.mda_flags = MAKEDEV_CHECKNAME | MAKEDEV_WAITOK;
 args.mda_devsw = &pwm_cdevsw;
 args.mda_uid = UID_ROOT;
 args.mda_gid = GID_OPERATOR;
 args.mda_mode = 0660;
 args.mda_si_drv1 = sc;
 error = make_dev_s(&args, &sc->cdev, "pwm/pwmc%d.%d",
     device_get_unit(device_get_parent(dev)), sc->chan);
 if (error != 0) {
  device_printf(dev, "Failed to make PWM device\n");
  return (error);
 }

 pwmc_setup_label(sc);

 return (0);
}
