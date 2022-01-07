
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uhso_softc {int sc_mtx; int sc_ucom; int sc_tty; int sc_super_ucom; } ;


 int M_USBDEV ;
 int device_free_softc (struct uhso_softc*) ;
 int free (int ,int ) ;
 int mtx_destroy (int *) ;
 scalar_t__ ucom_unref (int *) ;

__attribute__((used)) static void
uhso_free_softc(struct uhso_softc *sc)
{
 if (ucom_unref(&sc->sc_super_ucom)) {
  free(sc->sc_tty, M_USBDEV);
  free(sc->sc_ucom, M_USBDEV);
  mtx_destroy(&sc->sc_mtx);
  device_free_softc(sc);
 }
}
