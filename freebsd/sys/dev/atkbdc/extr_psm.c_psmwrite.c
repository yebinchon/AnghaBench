
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct uio {scalar_t__ uio_resid; } ;
struct TYPE_2__ {scalar_t__ level; } ;
struct psm_softc {int state; int kbdc; TYPE_1__ mode; } ;
struct cdev {struct psm_softc* si_drv1; } ;


 int EIO ;
 int ENODEV ;
 int FALSE ;
 int LOG_DEBUG ;
 scalar_t__ PSM_LEVEL_NATIVE ;
 int PSM_SMALLBUFSIZE ;
 int PSM_VALID ;
 int VLOG (int,int ) ;
 int imin (int,scalar_t__) ;
 int reinitialize (struct psm_softc*,int ) ;
 int uiomove (int *,int,struct uio*) ;
 int write_aux_command (int ,int ) ;

__attribute__((used)) static int
psmwrite(struct cdev *dev, struct uio *uio, int flag)
{
 struct psm_softc *sc = dev->si_drv1;
 u_char buf[PSM_SMALLBUFSIZE];
 int error = 0, i, l;

 if ((sc->state & PSM_VALID) == 0)
  return (EIO);

 if (sc->mode.level < PSM_LEVEL_NATIVE)
  return (ENODEV);


 while (uio->uio_resid > 0) {
  l = imin(PSM_SMALLBUFSIZE, uio->uio_resid);
  error = uiomove(buf, l, uio);
  if (error)
   break;
  for (i = 0; i < l; i++) {
   VLOG(4, (LOG_DEBUG, "psm: cmd 0x%x\n", buf[i]));
   if (!write_aux_command(sc->kbdc, buf[i])) {
    VLOG(2, (LOG_DEBUG,
        "psm: cmd 0x%x failed.\n", buf[i]));
    return (reinitialize(sc, FALSE));
   }
  }
 }

 return (error);
}
