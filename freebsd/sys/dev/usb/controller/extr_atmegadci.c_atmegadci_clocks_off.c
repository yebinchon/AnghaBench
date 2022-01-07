
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int clocks_off; } ;
struct atmegadci_softc {TYPE_1__ sc_flags; int sc_bus; int (* sc_clocks_off ) (int *) ;} ;


 int ATMEGA_USBCON ;
 int ATMEGA_USBCON_FRZCLK ;
 int ATMEGA_USBCON_OTGPADE ;
 int ATMEGA_USBCON_USBE ;
 int ATMEGA_USBCON_VBUSTE ;
 int ATMEGA_WRITE_1 (struct atmegadci_softc*,int ,int) ;
 int DPRINTFN (int,char*) ;
 int stub1 (int *) ;

__attribute__((used)) static void
atmegadci_clocks_off(struct atmegadci_softc *sc)
{
 if (!sc->sc_flags.clocks_off) {

  DPRINTFN(5, "\n");



  ATMEGA_WRITE_1(sc, ATMEGA_USBCON,
      ATMEGA_USBCON_USBE |
      ATMEGA_USBCON_OTGPADE |
      ATMEGA_USBCON_FRZCLK |
      ATMEGA_USBCON_VBUSTE);


  (sc->sc_clocks_off) (&sc->sc_bus);

  sc->sc_flags.clocks_off = 1;
 }
}
