
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cbb_softc {scalar_t__ cardok; } ;
struct cbb_intrhand {int (* filt ) (int ) ;int arg; struct cbb_softc* sc; } ;


 int CBB_CARD_PRESENT (int ) ;
 int CBB_SOCKET_STATE ;
 int FILTER_HANDLED ;
 int FILTER_STRAY ;
 int cbb_get (struct cbb_softc*,int ) ;
 int stub1 (int ) ;

__attribute__((used)) static int
cbb_func_filt(void *arg)
{
 struct cbb_intrhand *ih = (struct cbb_intrhand *)arg;
 struct cbb_softc *sc = ih->sc;




 if (!sc->cardok)
  return (FILTER_STRAY);
 if (!CBB_CARD_PRESENT(cbb_get(sc, CBB_SOCKET_STATE))) {
  sc->cardok = 0;
  return (FILTER_HANDLED);
 }





 return ((*ih->filt)(ih->arg));
}
