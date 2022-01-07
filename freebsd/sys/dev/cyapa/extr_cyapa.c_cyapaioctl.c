
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
struct thread {int dummy; } ;
struct TYPE_3__ {int level; int packetsize; void* protocol; scalar_t__ resolution; } ;
struct TYPE_4__ {int model; } ;
struct cyapa_softc {int zenabled; TYPE_1__ mode; TYPE_2__ hw; } ;
struct cdev {struct cyapa_softc* si_drv1; } ;
typedef TYPE_1__ mousemode_t ;
typedef TYPE_2__ mousehw_t ;
typedef scalar_t__ caddr_t ;


 int EINVAL ;
 int ENOTTY ;



 int MOUSE_MODEL_GENERIC ;
 void* MOUSE_PROTO_PS2 ;
 int MOUSE_PS2_PACKETSIZE ;
 scalar_t__ MOUSE_RES_LOW ;

 int cyapa_lock (struct cyapa_softc*) ;
 int cyapa_unlock (struct cyapa_softc*) ;

__attribute__((used)) static int
cyapaioctl(struct cdev *dev, u_long cmd, caddr_t data, int fflag, struct thread *td)
{
 struct cyapa_softc *sc;
 int error;

 sc = dev->si_drv1;
 error = 0;

 cyapa_lock(sc);
 switch (cmd) {
 case 131:
  *(mousehw_t *)data = sc->hw;
  if (sc->mode.level == 0)
   ((mousehw_t *)data)->model = MOUSE_MODEL_GENERIC;
  break;

 case 129:
  *(mousemode_t *)data = sc->mode;
  ((mousemode_t *)data)->resolution =
      MOUSE_RES_LOW - sc->mode.resolution;
  switch (sc->mode.level) {
  case 0:
   ((mousemode_t *)data)->protocol = MOUSE_PROTO_PS2;
   ((mousemode_t *)data)->packetsize =
       MOUSE_PS2_PACKETSIZE;
   break;
  case 2:
   ((mousemode_t *)data)->protocol = MOUSE_PROTO_PS2;
   ((mousemode_t *)data)->packetsize =
       MOUSE_PS2_PACKETSIZE + 1;
   break;
  }
  break;

 case 130:
  *(int *)data = sc->mode.level;
  break;

 case 128:
  if ((*(int *)data < 0) &&
      (*(int *)data > 2)) {
   error = EINVAL;
   break;
  }
  sc->mode.level = *(int *)data ? 2 : 0;
  sc->zenabled = sc->mode.level ? 1 : 0;
  break;

 default:
  error = ENOTTY;
  break;
 }
 cyapa_unlock(sc);

 return (error);
}
