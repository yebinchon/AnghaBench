
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct ucom_softc {int sc_flag; int sc_pps; TYPE_1__* sc_callback; } ;
struct tty {int dummy; } ;
struct thread {int dummy; } ;
typedef int caddr_t ;
struct TYPE_2__ {int (* ucom_ioctl ) (struct ucom_softc*,int,int ,int ,struct thread*) ;} ;


 int DPRINTF (char*,int) ;
 int EIO ;
 int ENOIOCTL ;
 int MA_OWNED ;




 int UCOM_FLAG_HL_READY ;
 int UCOM_MTX_ASSERT (struct ucom_softc*,int ) ;
 int pps_ioctl (int,int ,int *) ;
 int stub1 (struct ucom_softc*,int,int ,int ,struct thread*) ;
 struct ucom_softc* tty_softc (struct tty*) ;
 int ucom_break (struct ucom_softc*,int) ;
 int ucom_ring (struct ucom_softc*,int) ;

__attribute__((used)) static int
ucom_ioctl(struct tty *tp, u_long cmd, caddr_t data, struct thread *td)
{
 struct ucom_softc *sc = tty_softc(tp);
 int error;

 UCOM_MTX_ASSERT(sc, MA_OWNED);

 if (!(sc->sc_flag & UCOM_FLAG_HL_READY)) {
  return (EIO);
 }
 DPRINTF("cmd = 0x%08lx\n", cmd);

 switch (cmd) {
 case 129:
  ucom_break(sc, 1);
  error = 0;
  break;
 case 131:
  ucom_break(sc, 0);
  error = 0;
  break;
 default:
  if (sc->sc_callback->ucom_ioctl) {
   error = (sc->sc_callback->ucom_ioctl)
       (sc, cmd, data, 0, td);
  } else {
   error = ENOIOCTL;
  }
  if (error == ENOIOCTL)
   error = pps_ioctl(cmd, data, &sc->sc_pps);
  break;
 }
 return (error);
}
