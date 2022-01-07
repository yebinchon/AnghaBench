
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
typedef int u_char ;
struct uio {int uio_resid; } ;
struct cdev {int dummy; } ;
struct apm_softc {int* event_filter; } ;
typedef int caddr_t ;


 scalar_t__ APMDEV_CTL ;
 int APM_DPRINT (char*,size_t,int ) ;
 size_t APM_NPMEV ;
 int E2BIG ;
 int EINVAL ;
 int ENODEV ;
 struct apm_softc apm_softc ;
 scalar_t__ dev2unit (struct cdev*) ;
 int is_enabled (int) ;
 int uiomove (int ,int,struct uio*) ;

__attribute__((used)) static int
apmwrite(struct cdev *dev, struct uio *uio, int ioflag)
{
 struct apm_softc *sc = &apm_softc;
 u_int event_type;
 int error;
 u_char enabled;

 if (dev2unit(dev) != APMDEV_CTL)
  return(ENODEV);
 if (uio->uio_resid != sizeof(u_int))
  return(E2BIG);

 if ((error = uiomove((caddr_t)&event_type, sizeof(u_int), uio)))
  return(error);

 if (event_type >= APM_NPMEV)
  return(EINVAL);

 if (sc->event_filter[event_type] == 0) {
  enabled = 1;
 } else {
  enabled = 0;
 }
 sc->event_filter[event_type] = enabled;
 APM_DPRINT("apmwrite: event 0x%x %s\n", event_type, is_enabled(enabled));

 return uio->uio_resid;
}
