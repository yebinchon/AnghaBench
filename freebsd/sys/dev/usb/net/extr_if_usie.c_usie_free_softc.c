
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usie_softc {int sc_mtx; int sc_super_ucom; } ;


 int device_free_softc (struct usie_softc*) ;
 int mtx_destroy (int *) ;
 scalar_t__ ucom_unref (int *) ;

__attribute__((used)) static void
usie_free_softc(struct usie_softc *sc)
{
 if (ucom_unref(&sc->sc_super_ucom)) {
  mtx_destroy(&sc->sc_mtx);
  device_free_softc(sc);
 }
}
