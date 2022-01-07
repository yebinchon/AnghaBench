
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct umct_softc {int sc_lcr; } ;
struct ucom_softc {struct umct_softc* sc_parent; } ;
struct termios {int c_cflag; int c_ospeed; } ;






 int CSIZE ;
 int CSTOPB ;
 int PARENB ;
 int PARODD ;
 int UMCT_SET_BAUD ;
 int UMCT_SET_BAUD_SIZE ;
 int UMCT_SET_LCR ;
 int UMCT_SET_LCR_SIZE ;
 int umct_calc_baud (int ) ;
 int umct_cfg_do_request (struct umct_softc*,int ,int ,int) ;

__attribute__((used)) static void
umct_cfg_param(struct ucom_softc *ucom, struct termios *t)
{
 struct umct_softc *sc = ucom->sc_parent;
 uint32_t value;

 value = umct_calc_baud(t->c_ospeed);
 umct_cfg_do_request(sc, UMCT_SET_BAUD, UMCT_SET_BAUD_SIZE, value);

 value = (sc->sc_lcr & 0x40);

 switch (t->c_cflag & CSIZE) {
 case 131:
  value |= 0x0;
  break;
 case 130:
  value |= 0x1;
  break;
 case 129:
  value |= 0x2;
  break;
 default:
 case 128:
  value |= 0x3;
  break;
 }

 value |= (t->c_cflag & CSTOPB) ? 0x4 : 0;
 if (t->c_cflag & PARENB) {
  value |= 0x8;
  value |= (t->c_cflag & PARODD) ? 0x0 : 0x10;
 }





 sc->sc_lcr = value;
 umct_cfg_do_request(sc, UMCT_SET_LCR, UMCT_SET_LCR_SIZE, value);
}
