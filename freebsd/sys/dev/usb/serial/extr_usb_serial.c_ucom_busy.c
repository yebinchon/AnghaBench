
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ucom_softc {int const sc_lsr; int sc_flag; } ;
struct tty {int dummy; } ;


 int DPRINTFN (int,char*,struct ucom_softc*,int const) ;
 int MA_OWNED ;
 int UCOM_FLAG_LSRTXIDLE ;
 int UCOM_MTX_ASSERT (struct ucom_softc*,int ) ;
 int ULSR_TSRE ;
 int ULSR_TXRDY ;
 struct ucom_softc* tty_softc (struct tty*) ;

__attribute__((used)) static bool
ucom_busy(struct tty *tp)
{
 struct ucom_softc *sc = tty_softc(tp);
 const uint8_t txidle = ULSR_TXRDY | ULSR_TSRE;

 UCOM_MTX_ASSERT(sc, MA_OWNED);

 DPRINTFN(3, "sc = %p lsr 0x%02x\n", sc, sc->sc_lsr);






 if (sc->sc_flag & UCOM_FLAG_LSRTXIDLE)
  return ((sc->sc_lsr & txidle) != txidle);
 else
  return (0);
}
