
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct tty {int t_state; struct rc_chans* t_sc; } ;
struct rc_softc {int sc_scheduled_event; int sc_dev; } ;
struct rc_chans {int rc_flags; int * rc_ibuf; int * rc_iptr; int * rc_bufend; int rc_chan; struct rc_softc* rc_rcb; } ;


 int FREAD ;
 int FWRITE ;
 int RC_DORXFER ;
 int RC_IBUFSIZE ;
 int RC_OSUSP ;
 int TS_TTSTOP ;
 int critical_enter () ;
 int critical_exit () ;
 int device_printf (int ,char*,int ,char*,char*) ;
 int rc_discard_output (struct rc_chans*) ;

__attribute__((used)) static void
rc_stop(struct tty *tp, int rw)
{
 struct rc_softc *sc;
 struct rc_chans *rc;
 u_char *tptr, *eptr;

 rc = tp->t_sc;
 sc = rc->rc_rcb;




 if (rw & FWRITE)
  rc_discard_output(rc);
 critical_enter();
 if (rw & FREAD) {
  rc->rc_flags &= ~RC_DORXFER;
  eptr = rc->rc_iptr;
  if (rc->rc_bufend == &rc->rc_ibuf[2 * RC_IBUFSIZE]) {
   tptr = &rc->rc_ibuf[RC_IBUFSIZE];
   rc->rc_iptr = &rc->rc_ibuf[RC_IBUFSIZE];
  } else {
   tptr = rc->rc_ibuf;
   rc->rc_iptr = rc->rc_ibuf;
  }
  sc->sc_scheduled_event -= eptr - tptr;
 }
 if (tp->t_state & TS_TTSTOP)
  rc->rc_flags |= RC_OSUSP;
 else
  rc->rc_flags &= ~RC_OSUSP;
 critical_exit();
}
