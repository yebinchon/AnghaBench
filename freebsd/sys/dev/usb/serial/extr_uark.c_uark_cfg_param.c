
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct ucom_softc {struct uark_softc* sc_parent; } ;
struct uark_softc {int dummy; } ;
struct termios {int c_ospeed; int c_cflag; } ;






 int CSIZE ;
 int CSTOPB ;
 int PARENB ;
 int PARODD ;
 int UARK_BAUD_REF ;
 int UARK_PARITY_EVEN ;
 int UARK_PARITY_NONE ;
 int UARK_PARITY_ODD ;
 int UARK_SET_DATA_BITS (int) ;
 int UARK_STOP_BITS_1 ;
 int UARK_STOP_BITS_2 ;
 int uark_cfg_write (struct uark_softc*,int,int) ;

__attribute__((used)) static void
uark_cfg_param(struct ucom_softc *ucom, struct termios *t)
{
 struct uark_softc *sc = ucom->sc_parent;
 uint32_t speed = t->c_ospeed;
 uint16_t data;





 data = (UARK_BAUD_REF + (speed / 2)) / speed;

 uark_cfg_write(sc, 3, 0x83);
 uark_cfg_write(sc, 0, data & 0xFF);
 uark_cfg_write(sc, 1, data >> 8);
 uark_cfg_write(sc, 3, 0x03);

 if (t->c_cflag & CSTOPB)
  data = UARK_STOP_BITS_2;
 else
  data = UARK_STOP_BITS_1;

 if (t->c_cflag & PARENB) {
  if (t->c_cflag & PARODD)
   data |= UARK_PARITY_ODD;
  else
   data |= UARK_PARITY_EVEN;
 } else
  data |= UARK_PARITY_NONE;

 switch (t->c_cflag & CSIZE) {
 case 131:
  data |= UARK_SET_DATA_BITS(5);
  break;
 case 130:
  data |= UARK_SET_DATA_BITS(6);
  break;
 case 129:
  data |= UARK_SET_DATA_BITS(7);
  break;
 default:
 case 128:
  data |= UARK_SET_DATA_BITS(8);
  break;
 }
 uark_cfg_write(sc, 3, 0x00);
 uark_cfg_write(sc, 3, data);
}
