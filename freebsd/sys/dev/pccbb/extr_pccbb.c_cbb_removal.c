
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cbb_softc {int flags; int cbdev; int * exca; scalar_t__ cardok; } ;


 int CARD_DETACH_CARD (int ) ;
 int CBB_16BIT_CARD ;
 int cbb_destroy_res (struct cbb_softc*) ;
 scalar_t__ device_is_attached (int ) ;
 int exca_removal (int *) ;

__attribute__((used)) static void
cbb_removal(struct cbb_softc *sc)
{
 sc->cardok = 0;
 if (sc->flags & CBB_16BIT_CARD) {
  exca_removal(&sc->exca[0]);
 } else {
  if (device_is_attached(sc->cbdev))
   CARD_DETACH_CARD(sc->cbdev);
 }
 cbb_destroy_res(sc);
}
