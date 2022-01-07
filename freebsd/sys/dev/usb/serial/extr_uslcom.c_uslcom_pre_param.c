
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct uslcom_softc {int sc_partnum; } ;
struct ucom_softc {struct uslcom_softc* sc_parent; } ;
struct termios {scalar_t__ c_ospeed; } ;


 int EINVAL ;






__attribute__((used)) static int
uslcom_pre_param(struct ucom_softc *ucom, struct termios *t)
{
 struct uslcom_softc *sc = ucom->sc_parent;
 uint32_t maxspeed;

 switch (sc->sc_partnum) {
 case 129:
 case 128:
  maxspeed = 2000000;
  break;
 case 132:
 case 131:
 case 130:
 default:
  maxspeed = 921600;
  break;
 }
 if (t->c_ospeed <= 0 || t->c_ospeed > maxspeed)
  return (EINVAL);
 return (0);
}
