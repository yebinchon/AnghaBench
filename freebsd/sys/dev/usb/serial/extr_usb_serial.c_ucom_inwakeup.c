
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint16_t ;
struct ucom_softc {int sc_flag; size_t sc_jitterbuf_out; size_t sc_jitterbuf_in; scalar_t__* sc_jitterbuf; } ;
struct tty {int dummy; } ;


 int DPRINTF (char*,struct tty*) ;
 int MA_OWNED ;
 int UCOM_FLAG_HL_READY ;
 int UCOM_FLAG_INWAKEUP ;
 int UCOM_FLAG_RTS_IFLOW ;
 size_t UCOM_JITTERBUF_SIZE ;
 int UCOM_MTX_ASSERT (struct ucom_softc*,int ) ;
 struct ucom_softc* tty_softc (struct tty*) ;
 scalar_t__ ttydisc_can_bypass (struct tty*) ;
 int ttydisc_rint (struct tty*,int,int ) ;
 int ucom_rts (struct ucom_softc*,int ) ;

__attribute__((used)) static void
ucom_inwakeup(struct tty *tp)
{
 struct ucom_softc *sc = tty_softc(tp);
 uint16_t pos;

 if (sc == ((void*)0))
  return;

 UCOM_MTX_ASSERT(sc, MA_OWNED);

 DPRINTF("tp=%p\n", tp);

 if (ttydisc_can_bypass(tp) != 0 ||
     (sc->sc_flag & UCOM_FLAG_HL_READY) == 0 ||
     (sc->sc_flag & UCOM_FLAG_INWAKEUP) != 0) {
  return;
 }


 sc->sc_flag |= UCOM_FLAG_INWAKEUP;

 pos = sc->sc_jitterbuf_out;

 while (sc->sc_jitterbuf_in != pos) {
  int c;

  c = (char)sc->sc_jitterbuf[pos];

  if (ttydisc_rint(tp, c, 0) == -1)
   break;
  pos++;
  if (pos >= UCOM_JITTERBUF_SIZE)
   pos -= UCOM_JITTERBUF_SIZE;
 }

 sc->sc_jitterbuf_out = pos;


 if ((sc->sc_jitterbuf_in == pos) &&
     (sc->sc_flag & UCOM_FLAG_RTS_IFLOW))
  ucom_rts(sc, 0);

 sc->sc_flag &= ~UCOM_FLAG_INWAKEUP;
}
