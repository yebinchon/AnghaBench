
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int chan; } ;
struct uart_softc {int sc_rxfifosz; int sc_txfifosz; int sc_dev; TYPE_1__ sc_bas; } ;
typedef int buf ;


 int device_set_desc_copy (int ,char*) ;
 int quicc_probe (TYPE_1__*) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static int
quicc_bus_probe(struct uart_softc *sc)
{
 char buf[80];
 int error;

 error = quicc_probe(&sc->sc_bas);
 if (error)
  return (error);

 sc->sc_rxfifosz = 1;
 sc->sc_txfifosz = 1;

 snprintf(buf, sizeof(buf), "quicc, channel %d", sc->sc_bas.chan);
 device_set_desc_copy(sc->sc_dev, buf);
 return (0);
}
