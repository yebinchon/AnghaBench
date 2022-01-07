
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cbb_softc {scalar_t__ cardok; } ;
struct cbb_intrhand {int arg; int (* intr ) (int ) ;int * filt; struct cbb_softc* sc; } ;


 int CBB_CARD_PRESENT (int ) ;
 int CBB_SOCKET_STATE ;
 int cbb_get (struct cbb_softc*,int ) ;
 int stub1 (int ) ;

__attribute__((used)) static void
cbb_func_intr(void *arg)
{
 struct cbb_intrhand *ih = (struct cbb_intrhand *)arg;
 struct cbb_softc *sc = ih->sc;
 if (ih->filt == ((void*)0)) {
  if (!sc->cardok)
   return;
  if (!CBB_CARD_PRESENT(cbb_get(sc, CBB_SOCKET_STATE))) {
   sc->cardok = 0;
   return;
  }
 }






 ih->intr(ih->arg);
}
