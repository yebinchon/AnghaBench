
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct thread {int dummy; } ;
struct smapi_softc {int smapi32_entry; int header; } ;
struct smapi_bios_parameter {int dummy; } ;
struct smapi_bios_header {int dummy; } ;
struct cdev {int dummy; } ;
typedef scalar_t__ caddr_t ;


 int ENOTTY ;
 int ENXIO ;


 int bcopy (scalar_t__,scalar_t__,int) ;
 int dev2unit (struct cdev*) ;
 struct smapi_softc* devclass_get_softc (int ,int ) ;
 int smapi32 (struct smapi_bios_parameter*,struct smapi_bios_parameter*) ;
 int smapi32_offset ;
 int smapi_devclass ;

__attribute__((used)) static int
smapi_ioctl (struct cdev *dev, u_long cmd, caddr_t data, int fflag, struct thread *td)
{
 struct smapi_softc *sc;
 int error;

 error = 0;
 sc = devclass_get_softc(smapi_devclass, dev2unit(dev));
        if (sc == ((void*)0)) {
                error = ENXIO;
                goto fail;
        }

 switch (cmd) {
 case 128:
  bcopy((caddr_t)sc->header, data,
    sizeof(struct smapi_bios_header));
  error = 0;
  break;
 case 129:
  smapi32_offset = sc->smapi32_entry;
  error = smapi32((struct smapi_bios_parameter *)data,
    (struct smapi_bios_parameter *)data);
  break;
 default:
  error = ENOTTY;
 }

fail:
 return (error);
}
