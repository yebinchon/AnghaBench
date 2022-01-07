
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct ucom_softc {struct ubsa_softc* sc_parent; } ;
struct ubsa_softc {int sc_ucom; } ;
struct termios {int c_ospeed; int c_cflag; int c_iflag; } ;
 int CRTSCTS ;




 int CSIZE ;
 int CSTOPB ;
 int DPRINTF (char*,struct ubsa_softc*) ;
 int IXOFF ;
 int IXON ;
 int PARENB ;
 int PARODD ;
 int UBSA_FLOW_IRTS ;
 int UBSA_FLOW_IXON ;
 int UBSA_FLOW_OCTS ;
 int UBSA_FLOW_OXON ;
 int UBSA_PARITY_EVEN ;
 int UBSA_PARITY_NONE ;
 int UBSA_PARITY_ODD ;
 int UBSA_REG_BAUDRATE ;
 int UBSA_REG_DATA_BITS ;
 int UBSA_REG_FLOW_CTRL ;
 int UBSA_REG_PARITY ;
 int UBSA_REG_STOP_BITS ;
 int ubsa_cfg_request (struct ubsa_softc*,int ,int) ;
 int ubsa_cfg_set_dtr (int *,int ) ;
 int ubsa_cfg_set_rts (int *,int ) ;

__attribute__((used)) static void
ubsa_cfg_param(struct ucom_softc *ucom, struct termios *t)
{
 struct ubsa_softc *sc = ucom->sc_parent;
 uint16_t value = 0;

 DPRINTF("sc = %p\n", sc);

 switch (t->c_ospeed) {
 case 143:
  ubsa_cfg_request(sc, UBSA_REG_FLOW_CTRL, 0);
  ubsa_cfg_set_dtr(&sc->sc_ucom, 0);
  ubsa_cfg_set_rts(&sc->sc_ucom, 0);
  break;
 case 137:
 case 133:
 case 141:
 case 138:
 case 135:
 case 132:
 case 140:
 case 136:
 case 134:
 case 142:
 case 139:
  value = 139 / t->c_ospeed;
  ubsa_cfg_request(sc, UBSA_REG_BAUDRATE, value);
  break;
 default:
  return;
 }

 if (t->c_cflag & PARENB)
  value = (t->c_cflag & PARODD) ? UBSA_PARITY_ODD : UBSA_PARITY_EVEN;
 else
  value = UBSA_PARITY_NONE;

 ubsa_cfg_request(sc, UBSA_REG_PARITY, value);

 switch (t->c_cflag & CSIZE) {
 case 131:
  value = 0;
  break;
 case 130:
  value = 1;
  break;
 case 129:
  value = 2;
  break;
 default:
 case 128:
  value = 3;
  break;
 }

 ubsa_cfg_request(sc, UBSA_REG_DATA_BITS, value);

 value = (t->c_cflag & CSTOPB) ? 1 : 0;

 ubsa_cfg_request(sc, UBSA_REG_STOP_BITS, value);

 value = 0;
 if (t->c_cflag & CRTSCTS)
  value |= UBSA_FLOW_OCTS | UBSA_FLOW_IRTS;

 if (t->c_iflag & (IXON | IXOFF))
  value |= UBSA_FLOW_OXON | UBSA_FLOW_IXON;

 ubsa_cfg_request(sc, UBSA_REG_FLOW_CTRL, value);
}
