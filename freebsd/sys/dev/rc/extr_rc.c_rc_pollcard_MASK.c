#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u_char ;
struct TYPE_2__ {scalar_t__ c_cc; } ;
struct tty {int t_state; int t_iflag; int t_rawcc; scalar_t__* t_cc; int /*<<< orphan*/  t_lflag; TYPE_1__ t_rawq; } ;
struct rc_softc {scalar_t__ sc_scheduled_event; int /*<<< orphan*/  sc_dev; struct rc_chans* sc_channels; } ;
struct rc_chans {int rc_flags; int rc_msvr; int* rc_iptr; int* rc_bufend; int* rc_ibuf; int* rc_hiwat; struct tty* rc_tp; } ;

/* Variables and functions */
 int /*<<< orphan*/  CD180_CAR ; 
 int /*<<< orphan*/  CD180_MSVR ; 
 int CD180_NCHAN ; 
 int /*<<< orphan*/  FLUSHO ; 
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
 scalar_t__ FUNC0 (int*,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rc_chans*,char*) ; 
 int* rc_rcsrt ; 
 int /*<<< orphan*/  FUNC5 (struct tty*) ; 
 int /*<<< orphan*/  FUNC6 (struct rc_softc*,int /*<<< orphan*/ ,int) ; 
 int tk_nin ; 
 int tk_rawcc ; 
 int /*<<< orphan*/  FUNC7 (struct tty*) ; 
 int /*<<< orphan*/  FUNC8 (struct tty*) ; 
 int /*<<< orphan*/  FUNC9 (struct tty*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct tty*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct tty*) ; 

void
FUNC12(void *arg)
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
#ifdef RCDEBUG
			if (rc->rc_flags & (RC_DORXFER|RC_DOXXFER|RC_MODCHG|
			    RC_WAS_BUFOVFL|RC_WAS_SILOVFL))
				printrcflags(rc, "rcevent");
#endif
			if (rc->rc_flags & RC_WAS_BUFOVFL) {
				FUNC1();
				rc->rc_flags &= ~RC_WAS_BUFOVFL;
				sc->sc_scheduled_event--;
				FUNC2();
				FUNC3(sc->sc_dev,
			    "channel %d: interrupt-level buffer overflow\n",
				     chan);
			}
			if (rc->rc_flags & RC_WAS_SILOVFL) {
				FUNC1();
				rc->rc_flags &= ~RC_WAS_SILOVFL;
				sc->sc_scheduled_event--;
				FUNC2();
				FUNC3(sc->sc_dev,
				    "channel %d: silo overflow\n", chan);
			}
			if (rc->rc_flags & RC_MODCHG) {
				FUNC1();
				rc->rc_flags &= ~RC_MODCHG;
				sc->sc_scheduled_event -= LOTS_OF_EVENTS;
				FUNC2();
				FUNC9(tp, !!(rc->rc_msvr & MSVR_CD));
			}
			if (rc->rc_flags & RC_DORXFER) {
				FUNC1();
				rc->rc_flags &= ~RC_DORXFER;
				eptr = rc->rc_iptr;
				if (rc->rc_bufend == &rc->rc_ibuf[2 * RC_IBUFSIZE])
					tptr = &rc->rc_ibuf[RC_IBUFSIZE];
				else
					tptr = rc->rc_ibuf;
				icnt = eptr - tptr;
				if (icnt > 0) {
					if (rc->rc_bufend == &rc->rc_ibuf[2 * RC_IBUFSIZE]) {
						rc->rc_iptr   = rc->rc_ibuf;
						rc->rc_bufend = &rc->rc_ibuf[RC_IBUFSIZE];
						rc->rc_hiwat  = &rc->rc_ibuf[RC_IHIGHWATER];
					} else {
						rc->rc_iptr   = &rc->rc_ibuf[RC_IBUFSIZE];
						rc->rc_bufend = &rc->rc_ibuf[2 * RC_IBUFSIZE];
						rc->rc_hiwat  =
							&rc->rc_ibuf[RC_IBUFSIZE + RC_IHIGHWATER];
					}
					if (   (rc->rc_flags & RC_RTSFLOW)
					    && (tp->t_state & TS_ISOPEN)
					    && !(tp->t_state & TS_TBLOCK)
					    && !(rc->rc_msvr & MSVR_RTS)
					    ) {
						FUNC6(sc, CD180_CAR, chan);
						FUNC6(sc, CD180_MSVR,
							rc->rc_msvr |= MSVR_RTS);
					}
					sc->sc_scheduled_event -= icnt;
				}
				FUNC2();

				if (icnt <= 0 || !(tp->t_state & TS_ISOPEN))
					goto done1;

				if (   (tp->t_state & TS_CAN_BYPASS_L_RINT)
				    && !(tp->t_state & TS_LOCAL)) {
					if ((tp->t_rawq.c_cc + icnt) >= RB_I_HIGH_WATER
					    && ((rc->rc_flags & RC_RTSFLOW) || (tp->t_iflag & IXOFF))
					    && !(tp->t_state & TS_TBLOCK))
						FUNC8(tp);
					tk_nin += icnt;
					tk_rawcc += icnt;
					tp->t_rawcc += icnt;
					if (FUNC0(tptr, icnt, &tp->t_rawq))
						FUNC3(sc->sc_dev,
				    "channel %d: tty-level buffer overflow\n",
						    chan);
					FUNC7(tp);
					if ((tp->t_state & TS_TTSTOP) && ((tp->t_iflag & IXANY)
					    || (tp->t_cc[VSTART] == tp->t_cc[VSTOP]))) {
						tp->t_state &= ~TS_TTSTOP;
						tp->t_lflag &= ~FLUSHO;
						FUNC5(tp);
					}
				} else {
					for (; tptr < eptr; tptr++)
						FUNC10(tp,
						    (tptr[0] |
						    rc_rcsrt[tptr[INPUT_FLAGS_SHIFT] & 0xF]));
				}
done1: ;
			}
			if (rc->rc_flags & RC_DOXXFER) {
				FUNC1();
				sc->sc_scheduled_event -= LOTS_OF_EVENTS;
				rc->rc_flags &= ~RC_DOXXFER;
				rc->rc_tp->t_state &= ~TS_BUSY;
				FUNC2();
				FUNC11(tp);
			}
			if (sc->sc_scheduled_event == 0)
				break;
		}
	} while (sc->sc_scheduled_event >= LOTS_OF_EVENTS);
}