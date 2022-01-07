
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_long ;
struct usb_fifo {int dummy; } ;
struct TYPE_4__ {int flags; int obutton; int button; int dz; int dy; int dx; } ;
struct TYPE_5__ {int level; void** syncmask; void* packetsize; void* protocol; int rate; } ;
struct TYPE_6__ {void* buttons; } ;
struct ums_softc {void* sc_buttons; int sc_mtx; TYPE_1__ sc_status; TYPE_2__ sc_mode; TYPE_3__ sc_hw; int sc_pollrate; } ;
typedef TYPE_1__ mousestatus_t ;
typedef TYPE_2__ mousemode_t ;
typedef TYPE_3__ mousehw_t ;


 int DPRINTFN (int,char*) ;
 int EINVAL ;
 int ENOTTY ;
 int MOUSE_BUTTONSCHANGED ;




 void* MOUSE_MSC_MAXBUTTON ;
 void* MOUSE_MSC_PACKETSIZE ;
 void* MOUSE_MSC_SYNC ;
 void* MOUSE_MSC_SYNCMASK ;
 int MOUSE_POSCHANGED ;
 void* MOUSE_PROTO_MSC ;
 void* MOUSE_PROTO_SYSMOUSE ;


 void* MOUSE_SYS_MAXBUTTON ;
 void* MOUSE_SYS_PACKETSIZE ;
 void* MOUSE_SYS_SYNC ;
 void* MOUSE_SYS_SYNCMASK ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int ums_reset_buf (struct ums_softc*) ;
 struct ums_softc* usb_fifo_softc (struct usb_fifo*) ;

__attribute__((used)) static int
ums_fifo_ioctl(struct usb_fifo *fifo, u_long cmd, void *addr, int fflags)
{
 struct ums_softc *sc = usb_fifo_softc(fifo);
 mousemode_t mode;
 int error = 0;

 DPRINTFN(2, "\n");

 mtx_lock(&sc->sc_mtx);

 switch (cmd) {
 case 133:
  *(mousehw_t *)addr = sc->sc_hw;
  break;

 case 131:
  *(mousemode_t *)addr = sc->sc_mode;
  break;

 case 128:
  mode = *(mousemode_t *)addr;

  if (mode.level == -1) {

  } else if ((mode.level < 0) || (mode.level > 1)) {
   error = EINVAL;
   break;
  } else {
   sc->sc_mode.level = mode.level;
  }


  sc->sc_pollrate = mode.rate;

  if (sc->sc_mode.level == 0) {
   if (sc->sc_buttons > MOUSE_MSC_MAXBUTTON)
    sc->sc_hw.buttons = MOUSE_MSC_MAXBUTTON;
   else
    sc->sc_hw.buttons = sc->sc_buttons;
   sc->sc_mode.protocol = MOUSE_PROTO_MSC;
   sc->sc_mode.packetsize = MOUSE_MSC_PACKETSIZE;
   sc->sc_mode.syncmask[0] = MOUSE_MSC_SYNCMASK;
   sc->sc_mode.syncmask[1] = MOUSE_MSC_SYNC;
  } else if (sc->sc_mode.level == 1) {
   if (sc->sc_buttons > MOUSE_SYS_MAXBUTTON)
    sc->sc_hw.buttons = MOUSE_SYS_MAXBUTTON;
   else
    sc->sc_hw.buttons = sc->sc_buttons;
   sc->sc_mode.protocol = MOUSE_PROTO_SYSMOUSE;
   sc->sc_mode.packetsize = MOUSE_SYS_PACKETSIZE;
   sc->sc_mode.syncmask[0] = MOUSE_SYS_SYNCMASK;
   sc->sc_mode.syncmask[1] = MOUSE_SYS_SYNC;
  }
  ums_reset_buf(sc);
  break;

 case 132:
  *(int *)addr = sc->sc_mode.level;
  break;

 case 129:
  if (*(int *)addr < 0 || *(int *)addr > 1) {
   error = EINVAL;
   break;
  }
  sc->sc_mode.level = *(int *)addr;

  if (sc->sc_mode.level == 0) {
   if (sc->sc_buttons > MOUSE_MSC_MAXBUTTON)
    sc->sc_hw.buttons = MOUSE_MSC_MAXBUTTON;
   else
    sc->sc_hw.buttons = sc->sc_buttons;
   sc->sc_mode.protocol = MOUSE_PROTO_MSC;
   sc->sc_mode.packetsize = MOUSE_MSC_PACKETSIZE;
   sc->sc_mode.syncmask[0] = MOUSE_MSC_SYNCMASK;
   sc->sc_mode.syncmask[1] = MOUSE_MSC_SYNC;
  } else if (sc->sc_mode.level == 1) {
   if (sc->sc_buttons > MOUSE_SYS_MAXBUTTON)
    sc->sc_hw.buttons = MOUSE_SYS_MAXBUTTON;
   else
    sc->sc_hw.buttons = sc->sc_buttons;
   sc->sc_mode.protocol = MOUSE_PROTO_SYSMOUSE;
   sc->sc_mode.packetsize = MOUSE_SYS_PACKETSIZE;
   sc->sc_mode.syncmask[0] = MOUSE_SYS_SYNCMASK;
   sc->sc_mode.syncmask[1] = MOUSE_SYS_SYNC;
  }
  ums_reset_buf(sc);
  break;

 case 130:{
   mousestatus_t *status = (mousestatus_t *)addr;

   *status = sc->sc_status;
   sc->sc_status.obutton = sc->sc_status.button;
   sc->sc_status.button = 0;
   sc->sc_status.dx = 0;
   sc->sc_status.dy = 0;
   sc->sc_status.dz = 0;


   if (status->dx || status->dy || status->dz ) {
    status->flags |= MOUSE_POSCHANGED;
   }
   if (status->button != status->obutton) {
    status->flags |= MOUSE_BUTTONSCHANGED;
   }
   break;
  }
 default:
  error = ENOTTY;
  break;
 }

 mtx_unlock(&sc->sc_mtx);
 return (error);
}
