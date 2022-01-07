
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_softc {int sc_devnode; int sc_dev; } ;
struct make_dev_args {int mda_mode; int mda_unit; struct smb_softc* mda_si_drv1; int mda_gid; int mda_uid; int * mda_devsw; } ;
typedef int device_t ;


 int GID_WHEEL ;
 int UID_ROOT ;
 struct smb_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int make_dev_args_init (struct make_dev_args*) ;
 int make_dev_s (struct make_dev_args*,int *,char*,int ) ;
 int smb_cdevsw ;

__attribute__((used)) static int
smb_attach(device_t dev)
{
 struct smb_softc *sc;
 struct make_dev_args mda;
 int error;

 sc = device_get_softc(dev);
 sc->sc_dev = dev;

 make_dev_args_init(&mda);
 mda.mda_devsw = &smb_cdevsw;
 mda.mda_unit = device_get_unit(dev);
 mda.mda_uid = UID_ROOT;
 mda.mda_gid = GID_WHEEL;
 mda.mda_mode = 0600;
 mda.mda_si_drv1 = sc;
 error = make_dev_s(&mda, &sc->sc_devnode, "smb%d", mda.mda_unit);
 return (error);
}
