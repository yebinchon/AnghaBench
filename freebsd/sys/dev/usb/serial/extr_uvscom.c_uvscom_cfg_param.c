
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct uvscom_softc {int dummy; } ;
struct ucom_softc {struct uvscom_softc* sc_parent; } ;
struct termios {int c_ospeed; int c_cflag; } ;
 int CSIZE ;
 int CSTOPB ;
 int DPRINTF (char*) ;
 int PARENB ;
 int PARODD ;
 int UVSCOM_DATA_BIT_5 ;
 int UVSCOM_DATA_BIT_6 ;
 int UVSCOM_DATA_BIT_7 ;
 int UVSCOM_DATA_BIT_8 ;
 int UVSCOM_PARITY_EVEN ;
 int UVSCOM_PARITY_NONE ;
 int UVSCOM_PARITY_ODD ;
 int UVSCOM_SET_PARAM ;
 int UVSCOM_SET_SPEED ;
 int UVSCOM_SPEED_115200BPS ;
 int UVSCOM_SPEED_1200BPS ;
 int UVSCOM_SPEED_150BPS ;
 int UVSCOM_SPEED_19200BPS ;
 int UVSCOM_SPEED_2400BPS ;
 int UVSCOM_SPEED_300BPS ;
 int UVSCOM_SPEED_38400BPS ;
 int UVSCOM_SPEED_4800BPS ;
 int UVSCOM_SPEED_57600BPS ;
 int UVSCOM_SPEED_600BPS ;
 int UVSCOM_SPEED_9600BPS ;
 int UVSCOM_STOP_BIT_2 ;
 int uvscom_cfg_write (struct uvscom_softc*,int ,int ) ;

__attribute__((used)) static void
uvscom_cfg_param(struct ucom_softc *ucom, struct termios *t)
{
 struct uvscom_softc *sc = ucom->sc_parent;
 uint16_t value;

 DPRINTF("\n");

 switch (t->c_ospeed) {
 case 140:
  value = UVSCOM_SPEED_150BPS;
  break;
 case 137:
  value = UVSCOM_SPEED_300BPS;
  break;
 case 133:
  value = UVSCOM_SPEED_600BPS;
  break;
 case 141:
  value = UVSCOM_SPEED_1200BPS;
  break;
 case 138:
  value = UVSCOM_SPEED_2400BPS;
  break;
 case 135:
  value = UVSCOM_SPEED_4800BPS;
  break;
 case 132:
  value = UVSCOM_SPEED_9600BPS;
  break;
 case 139:
  value = UVSCOM_SPEED_19200BPS;
  break;
 case 136:
  value = UVSCOM_SPEED_38400BPS;
  break;
 case 134:
  value = UVSCOM_SPEED_57600BPS;
  break;
 case 142:
  value = UVSCOM_SPEED_115200BPS;
  break;
 default:
  return;
 }

 uvscom_cfg_write(sc, UVSCOM_SET_SPEED, value);

 value = 0;

 if (t->c_cflag & CSTOPB) {
  value |= UVSCOM_STOP_BIT_2;
 }
 if (t->c_cflag & PARENB) {
  if (t->c_cflag & PARODD) {
   value |= UVSCOM_PARITY_ODD;
  } else {
   value |= UVSCOM_PARITY_EVEN;
  }
 } else {
  value |= UVSCOM_PARITY_NONE;
 }

 switch (t->c_cflag & CSIZE) {
 case 131:
  value |= UVSCOM_DATA_BIT_5;
  break;
 case 130:
  value |= UVSCOM_DATA_BIT_6;
  break;
 case 129:
  value |= UVSCOM_DATA_BIT_7;
  break;
 default:
 case 128:
  value |= UVSCOM_DATA_BIT_8;
  break;
 }

 uvscom_cfg_write(sc, UVSCOM_SET_PARAM, value);
}
