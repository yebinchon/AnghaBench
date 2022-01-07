
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_2__ {scalar_t__ c_cc; } ;
struct tty {int t_state; int t_iflag; int t_rawcc; scalar_t__* t_cc; int t_lflag; TYPE_1__ t_rawq; } ;
struct rc_softc {scalar_t__ sc_scheduled_event; int sc_dev; struct rc_chans* sc_channels; } ;
struct rc_chans {int rc_flags; int rc_msvr; int* rc_iptr; int* rc_bufend; int* rc_ibuf; int* rc_hiwat; struct tty* rc_tp; } ;


 int CD180_CAR ;
 int CD180_MSVR ;
 int CD180_NCHAN ;
 int FLUSHO ;
 size_t INPUT_FLAGS_SHIFT ;
 int IXANY ;
 int IXOFF ;
 scalar_t__ LOTS_OF_EVENTS ;
 int MSVR_CD ;
 int MSVR_RTS ;
 scalar_t__ RB_I_HIGH_WATER ;
 int RC_DORXFER ;
 int RC_DOXXFER ;
 int RC_IBUFSIZE ;
 size_t RC_IHIGHWATER ;
 int RC_MODCHG ;
 int RC_RTSFLOW ;
 int RC_WAS_BUFOVFL ;
 int RC_WAS_SILOVFL ;
 int TS_BUSY ;
 int TS_CAN_BYPASS_L_RINT ;
 int TS_ISOPEN ;
 int TS_LOCAL ;
 int TS_TBLOCK ;
 int TS_TTSTOP ;
 size_t VSTART ;
 size_t VSTOP ;
 scalar_t__ b_to_q (int*,int,TYPE_1__*) ;
 int critical_enter () ;
 int critical_exit () ;
 int device_printf (int ,char*,int) ;
 int printrcflags (struct rc_chans*,char*) ;
 int* rc_rcsrt ;
 int rc_start (struct tty*) ;
 int rcout (struct rc_softc*,int ,int) ;
 int tk_nin ;
 int tk_rawcc ;
 int ttwakeup (struct tty*) ;
 int ttyblock (struct tty*) ;
 int ttyld_modem (struct tty*,int) ;
 int ttyld_rint (struct tty*,int) ;
 int ttyld_start (struct tty*) ;

void
rc_pollcard(void *arg)
{
 struct rc_softc *sc;
 struct rc_chans *rc;
 struct tty *tp;
 u_char *tptr, *eptr;
 int chan, icnt;

 sc = (struct rc_softc *)arg;
 if (sc->sc_scheduled_event == 0)
  return;
 do {
  rc = sc->sc_channels;
  for (chan = 0; chan < CD180_NCHAN; rc++, chan++) {
   tp = rc->rc_tp;





   if (rc->rc_flags & RC_WAS_BUFOVFL) {
    critical_enter();
    rc->rc_flags &= ~RC_WAS_BUFOVFL;
    sc->sc_scheduled_event--;
    critical_exit();
    device_printf(sc->sc_dev,
       "channel %d: interrupt-level buffer overflow\n",
         chan);
   }
   if (rc->rc_flags & RC_WAS_SILOVFL) {
    critical_enter();
    rc->rc_flags &= ~RC_WAS_SILOVFL;
    sc->sc_scheduled_event--;
    critical_exit();
    device_printf(sc->sc_dev,
        "channel %d: silo overflow\n", chan);
   }
   if (rc->rc_flags & RC_MODCHG) {
    critical_enter();
    rc->rc_flags &= ~RC_MODCHG;
    sc->sc_scheduled_event -= LOTS_OF_EVENTS;
    critical_exit();
    ttyld_modem(tp, !!(rc->rc_msvr & MSVR_CD));
   }
   if (rc->rc_flags & RC_DORXFER) {
    critical_enter();
    rc->rc_flags &= ~RC_DORXFER;
    eptr = rc->rc_iptr;
    if (rc->rc_bufend == &rc->rc_ibuf[2 * RC_IBUFSIZE])
     tptr = &rc->rc_ibuf[RC_IBUFSIZE];
    else
     tptr = rc->rc_ibuf;
    icnt = eptr - tptr;
    if (icnt > 0) {
     if (rc->rc_bufend == &rc->rc_ibuf[2 * RC_IBUFSIZE]) {
      rc->rc_iptr = rc->rc_ibuf;
      rc->rc_bufend = &rc->rc_ibuf[RC_IBUFSIZE];
      rc->rc_hiwat = &rc->rc_ibuf[RC_IHIGHWATER];
     } else {
      rc->rc_iptr = &rc->rc_ibuf[RC_IBUFSIZE];
      rc->rc_bufend = &rc->rc_ibuf[2 * RC_IBUFSIZE];
      rc->rc_hiwat =
       &rc->rc_ibuf[RC_IBUFSIZE + RC_IHIGHWATER];
     }
     if ( (rc->rc_flags & RC_RTSFLOW)
         && (tp->t_state & TS_ISOPEN)
         && !(tp->t_state & TS_TBLOCK)
         && !(rc->rc_msvr & MSVR_RTS)
         ) {
      rcout(sc, CD180_CAR, chan);
      rcout(sc, CD180_MSVR,
       rc->rc_msvr |= MSVR_RTS);
     }
     sc->sc_scheduled_event -= icnt;
    }
    critical_exit();

    if (icnt <= 0 || !(tp->t_state & TS_ISOPEN))
     goto done1;

    if ( (tp->t_state & TS_CAN_BYPASS_L_RINT)
        && !(tp->t_state & TS_LOCAL)) {
     if ((tp->t_rawq.c_cc + icnt) >= RB_I_HIGH_WATER
         && ((rc->rc_flags & RC_RTSFLOW) || (tp->t_iflag & IXOFF))
         && !(tp->t_state & TS_TBLOCK))
      ttyblock(tp);
     tk_nin += icnt;
     tk_rawcc += icnt;
     tp->t_rawcc += icnt;
     if (b_to_q(tptr, icnt, &tp->t_rawq))
      device_printf(sc->sc_dev,
        "channel %d: tty-level buffer overflow\n",
          chan);
     ttwakeup(tp);
     if ((tp->t_state & TS_TTSTOP) && ((tp->t_iflag & IXANY)
         || (tp->t_cc[VSTART] == tp->t_cc[VSTOP]))) {
      tp->t_state &= ~TS_TTSTOP;
      tp->t_lflag &= ~FLUSHO;
      rc_start(tp);
     }
    } else {
     for (; tptr < eptr; tptr++)
      ttyld_rint(tp,
          (tptr[0] |
          rc_rcsrt[tptr[INPUT_FLAGS_SHIFT] & 0xF]));
    }
done1: ;
   }
   if (rc->rc_flags & RC_DOXXFER) {
    critical_enter();
    sc->sc_scheduled_event -= LOTS_OF_EVENTS;
    rc->rc_flags &= ~RC_DOXXFER;
    rc->rc_tp->t_state &= ~TS_BUSY;
    critical_exit();
    ttyld_start(tp);
   }
   if (sc->sc_scheduled_event == 0)
    break;
  }
 } while (sc->sc_scheduled_event >= LOTS_OF_EVENTS);
}
