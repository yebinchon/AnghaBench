
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ucom_softc {int sc_flag; TYPE_2__* sc_callback; TYPE_1__* sc_close_task; } ;
struct tty {int dummy; } ;
struct TYPE_4__ {int (* ucom_stop_read ) (struct ucom_softc*) ;} ;
struct TYPE_3__ {int hdr; } ;


 int DPRINTF (char*,struct tty*) ;
 int MA_OWNED ;
 int UCOM_FLAG_HL_READY ;
 int UCOM_FLAG_RTS_IFLOW ;
 int UCOM_MTX_ASSERT (struct ucom_softc*,int ) ;
 int stub1 (struct ucom_softc*) ;
 struct ucom_softc* tty_softc (struct tty*) ;
 int ucom_cfg_close ;
 int ucom_queue_command (struct ucom_softc*,int ,int *,int *,int *) ;
 int ucom_shutdown (struct ucom_softc*) ;

__attribute__((used)) static void
ucom_close(struct tty *tp)
{
 struct ucom_softc *sc = tty_softc(tp);

 UCOM_MTX_ASSERT(sc, MA_OWNED);

 DPRINTF("tp=%p\n", tp);

 if (!(sc->sc_flag & UCOM_FLAG_HL_READY)) {
  DPRINTF("tp=%p already closed\n", tp);
  return;
 }
 ucom_shutdown(sc);

 ucom_queue_command(sc, ucom_cfg_close, ((void*)0),
     &sc->sc_close_task[0].hdr,
     &sc->sc_close_task[1].hdr);

 sc->sc_flag &= ~(UCOM_FLAG_HL_READY | UCOM_FLAG_RTS_IFLOW);

 if (sc->sc_callback->ucom_stop_read) {
  (sc->sc_callback->ucom_stop_read) (sc);
 }
}
