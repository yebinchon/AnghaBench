
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int clocks_off; } ;
struct musbotg_softc {TYPE_1__ sc_flags; int sc_clocks_arg; int (* sc_clocks_off ) (int ) ;} ;


 int DPRINTFN (int,char*) ;
 int stub1 (int ) ;

__attribute__((used)) static void
musbotg_clocks_off(struct musbotg_softc *sc)
{
 if (!sc->sc_flags.clocks_off) {

  DPRINTFN(4, "\n");



  if (sc->sc_clocks_off) {
   (sc->sc_clocks_off) (sc->sc_clocks_arg);
  }
  sc->sc_flags.clocks_off = 1;
 }
}
