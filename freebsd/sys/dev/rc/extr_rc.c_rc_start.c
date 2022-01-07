
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_2__ {int c_cc; } ;
struct tty {int t_state; TYPE_1__ t_outq; struct rc_chans* t_sc; } ;
struct rc_softc {int sc_dev; } ;
struct rc_chans {int rc_flags; int rc_msvr; int rc_chan; int rc_obufend; int rc_optr; int rc_obuf; int rc_ier; struct rc_softc* rc_rcb; } ;


 int CD180_CAR ;
 int CD180_IER ;
 int CD180_MSVR ;
 int IER_TxRdy ;
 int MSVR_RTS ;
 int RC_OSBUSY ;
 int RC_OSUSP ;
 int RC_RTSFLOW ;
 int TS_BUSY ;
 int TS_TBLOCK ;
 int TS_TIMEOUT ;
 int TS_TTSTOP ;
 int critical_enter () ;
 int critical_exit () ;
 int device_printf (int ,char*,int) ;
 int printf (char*,int,int) ;
 int printrcflags (struct rc_chans*,char*) ;
 int q_to_b (TYPE_1__*,int,int) ;
 int rcout (struct rc_softc*,int ,int) ;
 int spltty () ;
 int splx (int) ;
 int ttwwakeup (struct tty*) ;

__attribute__((used)) static void
rc_start(struct tty *tp)
{
 struct rc_softc *sc;
 struct rc_chans *rc;
 int s;

 rc = tp->t_sc;
 if (rc->rc_flags & RC_OSBUSY)
  return;
 sc = rc->rc_rcb;
 s = spltty();
 rc->rc_flags |= RC_OSBUSY;
 critical_enter();
 if (tp->t_state & TS_TTSTOP)
  rc->rc_flags |= RC_OSUSP;
 else
  rc->rc_flags &= ~RC_OSUSP;

 if ( (rc->rc_flags & RC_RTSFLOW)
     && (tp->t_state & TS_TBLOCK)
     && (rc->rc_msvr & MSVR_RTS)
    ) {
  rcout(sc, CD180_CAR, rc->rc_chan);
  rcout(sc, CD180_MSVR, rc->rc_msvr &= ~MSVR_RTS);
 } else if (!(rc->rc_msvr & MSVR_RTS)) {
  rcout(sc, CD180_CAR, rc->rc_chan);
  rcout(sc, CD180_MSVR, rc->rc_msvr |= MSVR_RTS);
 }
 critical_exit();
 if (tp->t_state & (TS_TIMEOUT|TS_TTSTOP))
  goto out;



 ttwwakeup(tp);




 if (tp->t_state & TS_BUSY)
  goto out;

 if (tp->t_outq.c_cc > 0) {
  u_int ocnt;

  tp->t_state |= TS_BUSY;
  ocnt = q_to_b(&tp->t_outq, rc->rc_obuf, sizeof rc->rc_obuf);
  critical_enter();
  rc->rc_optr = rc->rc_obuf;
  rc->rc_obufend = rc->rc_optr + ocnt;
  critical_exit();
  if (!(rc->rc_ier & IER_TxRdy)) {




   rcout(sc, CD180_CAR, rc->rc_chan);
   rcout(sc, CD180_IER, rc->rc_ier |= IER_TxRdy);
  }
 }
out:
 rc->rc_flags &= ~RC_OSBUSY;
 (void) splx(s);
}
