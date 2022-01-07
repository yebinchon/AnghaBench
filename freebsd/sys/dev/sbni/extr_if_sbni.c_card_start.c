
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sbni_softc {int state; int csr1; scalar_t__ wait_frameno; scalar_t__ inppos; int timer_ticks; } ;


 int CHANGE_LEVEL_START_TICKS ;
 int CSR0 ;
 int CSR1 ;
 int EN_INT ;
 int FL_NEED_RESEND ;
 int FL_PREV_OK ;
 int FL_WAIT_ACK ;
 int PR_RES ;
 int sbni_outb (struct sbni_softc*,int ,int) ;

__attribute__((used)) static void
card_start(struct sbni_softc *sc)
{
 sc->timer_ticks = CHANGE_LEVEL_START_TICKS;
 sc->state &= ~(FL_WAIT_ACK | FL_NEED_RESEND);
 sc->state |= FL_PREV_OK;

 sc->inppos = 0;
 sc->wait_frameno = 0;

 sbni_outb(sc, CSR1, *(u_char *)&sc->csr1 | PR_RES);
 sbni_outb(sc, CSR0, EN_INT);
}
