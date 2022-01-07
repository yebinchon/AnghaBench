
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ucom_softc {struct tty* sc_tty; } ;
struct TYPE_2__ {int c_cflag; } ;
struct tty {TYPE_1__ t_termios; } ;


 int DPRINTF (char*) ;
 int HUPCL ;
 int MA_OWNED ;
 int SER_DTR ;
 int UCOM_MTX_ASSERT (struct ucom_softc*,int ) ;
 int ucom_modem (struct tty*,int ,int ) ;

__attribute__((used)) static void
ucom_shutdown(struct ucom_softc *sc)
{
 struct tty *tp = sc->sc_tty;

 UCOM_MTX_ASSERT(sc, MA_OWNED);

 DPRINTF("\n");




 if (tp->t_termios.c_cflag & HUPCL) {
  ucom_modem(tp, 0, SER_DTR);
 }
}
