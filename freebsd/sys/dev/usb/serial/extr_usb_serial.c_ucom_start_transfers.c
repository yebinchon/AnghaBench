
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ucom_softc {int sc_flag; TYPE_1__* sc_callback; } ;
struct TYPE_2__ {int (* ucom_start_write ) (struct ucom_softc*) ;int (* ucom_start_read ) (struct ucom_softc*) ;} ;


 int UCOM_FLAG_HL_READY ;
 int stub1 (struct ucom_softc*) ;
 int stub2 (struct ucom_softc*) ;

__attribute__((used)) static void
ucom_start_transfers(struct ucom_softc *sc)
{
 if (!(sc->sc_flag & UCOM_FLAG_HL_READY)) {
  return;
 }




 if (sc->sc_callback->ucom_start_read) {
  (sc->sc_callback->ucom_start_read) (sc);
 }
 if (sc->sc_callback->ucom_start_write) {
  (sc->sc_callback->ucom_start_write) (sc);
 }
}
