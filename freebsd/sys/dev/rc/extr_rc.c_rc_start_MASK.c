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
typedef  int u_int ;
struct TYPE_2__ {int c_cc; } ;
struct tty {int t_state; TYPE_1__ t_outq; struct rc_chans* t_sc; } ;
struct rc_softc {int /*<<< orphan*/  sc_dev; } ;
struct rc_chans {int rc_flags; int rc_msvr; int rc_chan; int rc_obufend; int rc_optr; int rc_obuf; int rc_ier; struct rc_softc* rc_rcb; } ;

/* Variables and functions */
 int /*<<< orphan*/  CD180_CAR ; 
 int /*<<< orphan*/  CD180_IER ; 
 int /*<<< orphan*/  CD180_MSVR ; 
 int IER_TxRdy ; 
 int MSVR_RTS ; 
 int RC_OSBUSY ; 
 int RC_OSUSP ; 
 int RC_RTSFLOW ; 
 int TS_BUSY ; 
 int TS_TBLOCK ; 
 int TS_TIMEOUT ; 
 int TS_TTSTOP ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rc_chans*,char*) ; 
 int FUNC5 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct rc_softc*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct tty*) ; 

__attribute__((used)) static void
FUNC10(struct tty *tp)
{
	struct rc_softc *sc;
	struct rc_chans *rc;
	int s;

	rc = tp->t_sc;
	if (rc->rc_flags & RC_OSBUSY)
		return;
	sc = rc->rc_rcb;
	s = FUNC7();
	rc->rc_flags |= RC_OSBUSY;
	FUNC0();
	if (tp->t_state & TS_TTSTOP)
		rc->rc_flags |= RC_OSUSP;
	else
		rc->rc_flags &= ~RC_OSUSP;
	/* Do RTS flow control stuff */
	if (   (rc->rc_flags & RC_RTSFLOW)
	    && (tp->t_state & TS_TBLOCK)
	    && (rc->rc_msvr & MSVR_RTS)
	   ) {
		FUNC6(sc, CD180_CAR, rc->rc_chan);
		FUNC6(sc, CD180_MSVR, rc->rc_msvr &= ~MSVR_RTS);
	} else if (!(rc->rc_msvr & MSVR_RTS)) {
		FUNC6(sc, CD180_CAR, rc->rc_chan);
		FUNC6(sc, CD180_MSVR, rc->rc_msvr |= MSVR_RTS);
	}
	FUNC1();
	if (tp->t_state & (TS_TIMEOUT|TS_TTSTOP))
		goto out;
#ifdef RCDEBUG
	printrcflags(rc, "rcstart");
#endif
	FUNC9(tp);
#ifdef RCDEBUG
	printf("rcstart: outq = %d obuf = %d\n",
		tp->t_outq.c_cc, rc->rc_obufend - rc->rc_optr);
#endif
	if (tp->t_state & TS_BUSY)
		goto out;    /* output still in progress ... */

	if (tp->t_outq.c_cc > 0) {
		u_int   ocnt;

		tp->t_state |= TS_BUSY;
		ocnt = FUNC5(&tp->t_outq, rc->rc_obuf, sizeof rc->rc_obuf);
		FUNC0();
		rc->rc_optr = rc->rc_obuf;
		rc->rc_obufend = rc->rc_optr + ocnt;
		FUNC1();
		if (!(rc->rc_ier & IER_TxRdy)) {
#ifdef RCDEBUG
			device_printf(sc->sc_dev,
			    "channel %d: rcstart enable txint\n", rc->rc_chan);
#endif
			FUNC6(sc, CD180_CAR, rc->rc_chan);
			FUNC6(sc, CD180_IER, rc->rc_ier |= IER_TxRdy);
		}
	}
out:
	rc->rc_flags &= ~RC_OSBUSY;
	(void) FUNC8(s);
}