
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ucom_super_softc {int dummy; } ;
struct ucom_softc {int sc_flag; TYPE_1__* sc_callback; struct tty* sc_tty; int * sc_consdev; } ;
struct tty {int dummy; } ;
struct TYPE_2__ {int (* ucom_stop_write ) (struct ucom_softc*) ;int (* ucom_stop_read ) (struct ucom_softc*) ;} ;


 int DPRINTF (char*,struct ucom_softc*,struct tty*) ;
 int M_USBDEV ;
 int UCOM_FLAG_CONSOLE ;
 int UCOM_FLAG_GONE ;
 int UCOM_FLAG_HL_READY ;
 int UCOM_FLAG_LL_READY ;
 int UCOM_MTX_LOCK (struct ucom_softc*) ;
 int UCOM_MTX_UNLOCK (struct ucom_softc*) ;
 int cnremove (int *) ;
 int free (int *,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int stub1 (struct ucom_softc*) ;
 int stub2 (struct ucom_softc*) ;
 int tty_lock (struct tty*) ;
 int tty_rel_gone (struct tty*) ;
 int ucom_close (struct tty*) ;
 int ucom_close_refs ;
 struct ucom_softc* ucom_cons_softc ;
 int ucom_mtx ;

__attribute__((used)) static void
ucom_detach_tty(struct ucom_super_softc *ssc, struct ucom_softc *sc)
{
 struct tty *tp = sc->sc_tty;

 DPRINTF("sc = %p, tp = %p\n", sc, sc->sc_tty);

 if (sc->sc_consdev != ((void*)0)) {
  cnremove(sc->sc_consdev);
  free(sc->sc_consdev, M_USBDEV);
  sc->sc_consdev = ((void*)0);
 }

 if (sc->sc_flag & UCOM_FLAG_CONSOLE) {
  UCOM_MTX_LOCK(ucom_cons_softc);
  ucom_close(ucom_cons_softc->sc_tty);
  sc->sc_flag &= ~UCOM_FLAG_CONSOLE;
  UCOM_MTX_UNLOCK(ucom_cons_softc);
  ucom_cons_softc = ((void*)0);
 }



 UCOM_MTX_LOCK(sc);
 sc->sc_flag |= UCOM_FLAG_GONE;
 sc->sc_flag &= ~(UCOM_FLAG_HL_READY | UCOM_FLAG_LL_READY);
 UCOM_MTX_UNLOCK(sc);

 if (tp) {
  mtx_lock(&ucom_mtx);
  ucom_close_refs++;
  mtx_unlock(&ucom_mtx);

  tty_lock(tp);

  ucom_close(tp);

  tty_rel_gone(tp);

  UCOM_MTX_LOCK(sc);



  if (sc->sc_callback->ucom_stop_read)
   (sc->sc_callback->ucom_stop_read) (sc);
  if (sc->sc_callback->ucom_stop_write)
   (sc->sc_callback->ucom_stop_write) (sc);
  UCOM_MTX_UNLOCK(sc);
 }
}
