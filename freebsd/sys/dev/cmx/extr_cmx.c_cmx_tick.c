
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct cmx_softc {int ch; int sel; scalar_t__ polling; int dev; int dying; } ;


 int BSRBITS ;
 int BSR_BULK_IN_FULL ;
 int CMX_LOCK (struct cmx_softc*) ;
 int CMX_UNLOCK (struct cmx_softc*) ;
 int DEBUG_printf (int ,char*,int ,int ) ;
 int POLL_TICKS ;
 int PZERO ;
 int callout_reset (int *,int ,void (*) (void*),struct cmx_softc*) ;
 int cmx_read_BSR (struct cmx_softc*) ;
 scalar_t__ cmx_test (int ,int ,int) ;
 int selwakeuppri (int *,int ) ;

__attribute__((used)) static void
cmx_tick(void *xsc)
{
 struct cmx_softc *sc = xsc;
 uint8_t bsr;

 CMX_LOCK(sc);
 if (sc->polling && !sc->dying) {
  bsr = cmx_read_BSR(sc);
  DEBUG_printf(sc->dev, "BSR=%b\n", bsr, BSRBITS);
  if (cmx_test(bsr, BSR_BULK_IN_FULL, 1)) {
   sc->polling = 0;
   selwakeuppri(&sc->sel, PZERO);
  } else {
   callout_reset(&sc->ch, POLL_TICKS, cmx_tick, sc);
  }
 }
 CMX_UNLOCK(sc);
}
