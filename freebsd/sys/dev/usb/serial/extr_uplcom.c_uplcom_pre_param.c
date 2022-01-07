
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uplcom_softc {int sc_chiptype; } ;
struct ucom_softc {struct uplcom_softc* sc_parent; } ;
struct termios {int c_ospeed; } ;


 int DPRINTF (char*,...) ;
 int EIO ;


 int uplcom_baud_supported (int) ;

__attribute__((used)) static int
uplcom_pre_param(struct ucom_softc *ucom, struct termios *t)
{
 struct uplcom_softc *sc = ucom->sc_parent;

 DPRINTF("\n");
 if (t->c_ospeed & 0x80000000)
  return 0;
 switch (sc->sc_chiptype) {
  case 128:
   if (t->c_ospeed <= 12000000)
    return (0);
   break;
  case 129:
   if (t->c_ospeed <= 6000000)
    return (0);
   break;
  default:
   if (uplcom_baud_supported(t->c_ospeed))
    return (0);
   break;
 }

 DPRINTF("uplcom_param: bad baud rate (%d)\n", t->c_ospeed);
 return (EIO);
}
