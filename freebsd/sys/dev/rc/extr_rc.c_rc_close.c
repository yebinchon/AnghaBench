
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int t_cflag; int t_state; struct rc_chans* t_sc; } ;
struct rc_softc {int dummy; } ;
struct rc_chans {int rc_flags; int rc_msvr; struct rc_softc* rc_rcb; scalar_t__ rc_chan; scalar_t__ rc_ier; } ;


 int CCRCMD (struct rc_softc*,scalar_t__,int ) ;
 int CCR_ResetChan ;
 int CD180_CAR ;
 int CD180_IER ;
 int CLOCAL ;
 int HUPCL ;
 int MSVR_CD ;
 int RC_ACTOUT ;
 int SER_RTS ;
 struct rc_softc** TSA_CARR_ON (struct tty*) ;
 int TS_ISOPEN ;
 int WAITFORCCR (struct rc_softc*,scalar_t__) ;
 int rc_modem (struct tty*,int ,int ) ;
 int rcout (struct rc_softc*,int ,scalar_t__) ;
 int spltty () ;
 int splx (int) ;
 int ttydtrwaitstart (struct tty*) ;
 int wakeup (struct rc_softc**) ;

__attribute__((used)) static void
rc_close(struct tty *tp)
{
 struct rc_chans *rc;
 struct rc_softc *sc;
 int s;

 rc = tp->t_sc;
 sc = rc->rc_rcb;
 s = spltty();
 rcout(sc, CD180_CAR, rc->rc_chan);


 rcout(sc, CD180_IER, rc->rc_ier = 0);
 if ( (tp->t_cflag & HUPCL)
     || (!(rc->rc_flags & RC_ACTOUT)
        && !(rc->rc_msvr & MSVR_CD)
        && !(tp->t_cflag & CLOCAL))
     || !(tp->t_state & TS_ISOPEN)
    ) {
  CCRCMD(sc, rc->rc_chan, CCR_ResetChan);
  WAITFORCCR(sc, rc->rc_chan);
  (void) rc_modem(tp, SER_RTS, 0);
  ttydtrwaitstart(tp);
 }
 rc->rc_flags &= ~RC_ACTOUT;
 wakeup( &rc->rc_rcb);
 wakeup(TSA_CARR_ON(tp));
 (void) splx(s);
}
