
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucom_softc {int sc_flag; } ;
struct tty {int dummy; } ;


 int DPRINTF (char*,struct ucom_softc*) ;
 int MA_OWNED ;
 int UCOM_FLAG_HL_READY ;
 int UCOM_MTX_ASSERT (struct ucom_softc*,int ) ;
 struct ucom_softc* tty_softc (struct tty*) ;
 int ucom_start_transfers (struct ucom_softc*) ;

__attribute__((used)) static void
ucom_outwakeup(struct tty *tp)
{
 struct ucom_softc *sc = tty_softc(tp);

 UCOM_MTX_ASSERT(sc, MA_OWNED);

 DPRINTF("sc = %p\n", sc);

 if (!(sc->sc_flag & UCOM_FLAG_HL_READY)) {

  return;
 }
 ucom_start_transfers(sc);
}
