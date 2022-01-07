
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;
typedef int u_long ;
struct usb_fifo {int dummy; } ;
struct uled_color {char red; char green; char blue; } ;
struct uled_softc {int sc_flags; int sc_mtx; struct uled_color sc_color; } ;
typedef int buf ;


 int ENOTTY ;
 int ULED_FLAG_BLINK1 ;


 int UR_SET_REPORT ;
 int UT_WRITE_CLASS_INTERFACE ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int uled_ctrl_msg (struct uled_softc*,int ,int ,int,int ,char*,int) ;
 struct uled_softc* usb_fifo_softc (struct usb_fifo*) ;

__attribute__((used)) static int
uled_ioctl(struct usb_fifo *fifo, u_long cmd, void *addr, int fflags)
{
 struct uled_softc *sc;
 struct uled_color color;
 int error;

 sc = usb_fifo_softc(fifo);
 error = 0;

 mtx_lock(&sc->sc_mtx);

 switch(cmd) {
 case 129:
  *(struct uled_color *)addr = sc->sc_color;
  break;
 case 128:
  color = *(struct uled_color *)addr;
  uint8_t buf[8];

  sc->sc_color.red = color.red;
  sc->sc_color.green = color.green;
  sc->sc_color.blue = color.blue;

  if (sc->sc_flags & ULED_FLAG_BLINK1) {
   buf[0] = 0x1;
   buf[1] = 'n';
   buf[2] = color.red;
   buf[3] = color.green;
   buf[4] = color.blue;
   buf[5] = buf[6] = buf[7] = 0;
  } else {
   buf[0] = color.red;
   buf[1] = color.green;
   buf[2] = color.blue;
   buf[3] = buf[4] = buf[5] = 0;
   buf[6] = 0x1a;
   buf[7] = 0x05;
  }
  error = uled_ctrl_msg(sc, UT_WRITE_CLASS_INTERFACE,
      UR_SET_REPORT, 0x200, 0, buf, sizeof(buf));
  break;
 default:
  error = ENOTTY;
  break;
 }

 mtx_unlock(&sc->sc_mtx);
 return (error);
}
