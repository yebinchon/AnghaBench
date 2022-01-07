
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbni_softc {struct sbni_softc* slave_sc; } ;


 int CSR0 ;
 int RC_RDY ;
 int SBNI_LOCK (struct sbni_softc*) ;
 int SBNI_UNLOCK (struct sbni_softc*) ;
 int TR_RDY ;
 int handle_channel (struct sbni_softc*) ;
 int sbni_inb (struct sbni_softc*,int ) ;

void
sbni_intr(void *arg)
{
 struct sbni_softc *sc;
 int repeat;

 sc = (struct sbni_softc *)arg;

 do {
  repeat = 0;
  SBNI_LOCK(sc);
  if (sbni_inb(sc, CSR0) & (RC_RDY | TR_RDY)) {
   handle_channel(sc);
   repeat = 1;
  }
  SBNI_UNLOCK(sc);
  if (sc->slave_sc) {

   SBNI_LOCK(sc->slave_sc);
   if (sbni_inb(sc->slave_sc, CSR0) & (RC_RDY | TR_RDY)) {
    handle_channel(sc->slave_sc);
    repeat = 1;
   }
   SBNI_UNLOCK(sc->slave_sc);
  }
 } while (repeat);
}
