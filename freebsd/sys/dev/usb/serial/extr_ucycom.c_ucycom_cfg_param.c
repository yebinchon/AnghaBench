
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ucycom_softc {int sc_cfg; } ;
struct ucom_softc {struct ucycom_softc* sc_parent; } ;
struct termios {int c_cflag; int c_ospeed; } ;


 int CIGNORE ;




 int CSIZE ;
 int CSTOPB ;
 int DPRINTF (char*) ;
 int PARENB ;
 int PARODD ;
 int UCYCOM_CFG_PAREN ;
 int UCYCOM_CFG_PARODD ;
 int UCYCOM_CFG_STOPB ;
 int ucycom_cfg_write (struct ucycom_softc*,int ,int ) ;

__attribute__((used)) static void
ucycom_cfg_param(struct ucom_softc *ucom, struct termios *t)
{
 struct ucycom_softc *sc = ucom->sc_parent;
 uint8_t cfg;

 DPRINTF("\n");

 if (t->c_cflag & CIGNORE) {
  cfg = sc->sc_cfg;
 } else {
  cfg = 0;
  switch (t->c_cflag & CSIZE) {
  default:
  case 128:
   ++cfg;
  case 129:
   ++cfg;
  case 130:
   ++cfg;
  case 131:
   break;
  }

  if (t->c_cflag & CSTOPB)
   cfg |= UCYCOM_CFG_STOPB;
  if (t->c_cflag & PARENB)
   cfg |= UCYCOM_CFG_PAREN;
  if (t->c_cflag & PARODD)
   cfg |= UCYCOM_CFG_PARODD;
 }

 ucycom_cfg_write(sc, t->c_ospeed, cfg);
}
