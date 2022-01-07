
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ciss_softc {TYPE_1__* ciss_cfg; } ;
struct TYPE_2__ {int active_method; } ;


 int CISS_TRANSPORT_METHOD_READY ;
 int DELAY (int) ;
 int EIO ;
 int ciss_printf (struct ciss_softc*,char*) ;
 int debug_called (int) ;

__attribute__((used)) static int
ciss_wait_adapter(struct ciss_softc *sc)
{
    int i;

    debug_called(1);




    if (!(sc->ciss_cfg->active_method & CISS_TRANSPORT_METHOD_READY)) {
 ciss_printf(sc, "waiting for adapter to come ready...\n");
 for (i = 0; !(sc->ciss_cfg->active_method & CISS_TRANSPORT_METHOD_READY); i++) {
     DELAY(1000000);
     if (i > 30) {
  ciss_printf(sc, "timed out waiting for adapter to come ready\n");
  return(EIO);
     }
 }
    }
    return(0);
}
