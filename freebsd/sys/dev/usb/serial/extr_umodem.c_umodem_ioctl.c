
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct umodem_softc {int sc_cm_over_data; } ;
struct ucom_softc {struct umodem_softc* sc_parent; } ;
struct thread {int dummy; } ;
typedef scalar_t__ caddr_t ;


 int DPRINTF (char*,...) ;
 int ENOIOCTL ;



__attribute__((used)) static int
umodem_ioctl(struct ucom_softc *ucom, uint32_t cmd, caddr_t data,
    int flag, struct thread *td)
{
 struct umodem_softc *sc = ucom->sc_parent;
 int error = 0;

 DPRINTF("cmd=0x%08x\n", cmd);

 switch (cmd) {
 case 129:
  *(int *)data = sc->sc_cm_over_data;
  break;

 case 128:
  if (*(int *)data != sc->sc_cm_over_data) {

  }
  break;

 default:
  DPRINTF("unknown\n");
  error = ENOIOCTL;
  break;
 }

 return (error);
}
