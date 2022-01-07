
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int chan; } ;
struct uart_softc {int sc_rxfifosz; int sc_txfifosz; int sc_hwoflow; int sc_dev; int sc_hwiflow; TYPE_1__ sc_bas; } ;
typedef int buf ;


 int SAB_VSTR ;
 int SAB_VSTR_VMASK ;



 int device_set_desc_copy (int ,char*) ;
 int sab82532_probe (TYPE_1__*) ;
 int snprintf (char*,int,char*,char const*,char) ;
 int uart_getreg (TYPE_1__*,int ) ;

__attribute__((used)) static int
sab82532_bus_probe(struct uart_softc *sc)
{
 char buf[80];
 const char *vstr;
 int error;
 char ch;

 error = sab82532_probe(&sc->sc_bas);
 if (error)
  return (error);

 sc->sc_rxfifosz = 32;
 sc->sc_txfifosz = 32;

 ch = sc->sc_bas.chan - 1 + 'A';

 switch (uart_getreg(&sc->sc_bas, SAB_VSTR) & SAB_VSTR_VMASK) {
 case 130:
  vstr = "v1";
  break;
 case 129:
  vstr = "v2";
  break;
 case 128:
  vstr = "v3.2";
  sc->sc_hwiflow = 0;
  sc->sc_hwoflow = 1;
  break;
 default:
  vstr = "v4?";
  break;
 }

 snprintf(buf, sizeof(buf), "SAB 82532 %s, channel %c", vstr, ch);
 device_set_desc_copy(sc->sc_dev, buf);
 return (0);
}
