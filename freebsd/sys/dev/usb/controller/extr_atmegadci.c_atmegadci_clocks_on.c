
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ clocks_off; scalar_t__ port_powered; } ;
struct atmegadci_softc {TYPE_1__ sc_flags; int sc_bus; int (* sc_clocks_on ) (int *) ;} ;


 int ATMEGA_USBCON ;
 int ATMEGA_USBCON_OTGPADE ;
 int ATMEGA_USBCON_USBE ;
 int ATMEGA_USBCON_VBUSTE ;
 int ATMEGA_WRITE_1 (struct atmegadci_softc*,int ,int) ;
 int DPRINTFN (int,char*) ;
 int stub1 (int *) ;

__attribute__((used)) static void
atmegadci_clocks_on(struct atmegadci_softc *sc)
{
 if (sc->sc_flags.clocks_off &&
     sc->sc_flags.port_powered) {

  DPRINTFN(5, "\n");


  (sc->sc_clocks_on) (&sc->sc_bus);

  ATMEGA_WRITE_1(sc, ATMEGA_USBCON,
      ATMEGA_USBCON_USBE |
      ATMEGA_USBCON_OTGPADE |
      ATMEGA_USBCON_VBUSTE);

  sc->sc_flags.clocks_off = 0;


 }
}
