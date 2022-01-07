
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int chan; } ;
struct uart_softc {int sc_rxfifosz; int sc_txfifosz; int sc_dev; TYPE_1__ sc_bas; } ;
typedef int buf ;


 int device_set_desc_copy (int ,char*) ;
 int snprintf (char*,int,char*,char) ;
 int z8530_probe (TYPE_1__*) ;

__attribute__((used)) static int
z8530_bus_probe(struct uart_softc *sc)
{
 char buf[80];
 int error;
 char ch;

 error = z8530_probe(&sc->sc_bas);
 if (error)
  return (error);

 sc->sc_rxfifosz = 3;
 sc->sc_txfifosz = 1;

 ch = sc->sc_bas.chan - 1 + 'A';

 snprintf(buf, sizeof(buf), "z8530, channel %c", ch);
 device_set_desc_copy(sc->sc_dev, buf);
 return (0);
}
