
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
struct thread {int dummy; } ;
struct cdev {int dummy; } ;
struct TYPE_4__ {int level; int packetsize; } ;
struct adb_mouse_softc {int buttons; int last_buttons; int sc_mtx; int ydelta; int xdelta; TYPE_2__ mode; int hw; } ;
struct TYPE_3__ {int button; int obutton; int flags; int dz; int dy; int dx; } ;
typedef TYPE_1__ mousestatus_t ;
typedef TYPE_2__ mousemode_t ;
typedef int mousehw_t ;
typedef scalar_t__ caddr_t ;


 struct adb_mouse_softc* CDEV_GET_SOFTC (struct cdev*) ;
 int EINVAL ;
 int EIO ;
 int ENOTTY ;
 int MOUSE_BUTTONSCHANGED ;




 int MOUSE_POSCHANGED ;


 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static int
ams_ioctl(struct cdev *dev, u_long cmd, caddr_t addr, int flag,
    struct thread *p)
{
 struct adb_mouse_softc *sc;
 mousemode_t mode;

 sc = CDEV_GET_SOFTC(dev);
 if (sc == ((void*)0))
  return (EIO);

 switch (cmd) {
 case 133:
  *(mousehw_t *)addr = sc->hw;
  break;
 case 131:
  *(mousemode_t *)addr = sc->mode;
  break;
 case 128:
  mode = *(mousemode_t *)addr;
  addr = (caddr_t)&mode.level;



 case 129:
  if (*(int *)addr == -1)
   break;
  else if (*(int *)addr == 1) {
   sc->mode.level = 1;
   sc->mode.packetsize = 8;
   break;
  } else if (*(int *)addr == 0) {
   sc->mode.level = 0;
   sc->mode.packetsize = 5;
   break;
  }

  return EINVAL;
 case 132:
  *(int *)addr = sc->mode.level;
  break;

 case 130: {
  mousestatus_t *status = (mousestatus_t *) addr;

  mtx_lock(&sc->sc_mtx);

  status->button = sc->buttons;
  status->obutton = sc->last_buttons;

  status->flags = status->button ^ status->obutton;

  if (sc->xdelta != 0 || sc->ydelta)
   status->flags |= MOUSE_POSCHANGED;
  if (status->button != status->obutton)
   status->flags |= MOUSE_BUTTONSCHANGED;

  status->dx = sc->xdelta;
  status->dy = sc->ydelta;
  status->dz = 0;

  sc->xdelta = 0;
  sc->ydelta = 0;
  sc->last_buttons = sc->buttons;

  mtx_unlock(&sc->sc_mtx);

  break; }
 default:
  return ENOTTY;
 }

 return (0);
}
