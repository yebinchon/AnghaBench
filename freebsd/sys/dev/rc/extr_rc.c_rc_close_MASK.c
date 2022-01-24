#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct tty {int t_cflag; int t_state; struct rc_chans* t_sc; } ;
struct rc_softc {int dummy; } ;
struct rc_chans {int rc_flags; int rc_msvr; struct rc_softc* rc_rcb; scalar_t__ rc_chan; scalar_t__ rc_ier; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rc_softc*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CCR_ResetChan ; 
 int /*<<< orphan*/  CD180_CAR ; 
 int /*<<< orphan*/  CD180_IER ; 
 int CLOCAL ; 
 int HUPCL ; 
 int MSVR_CD ; 
 int RC_ACTOUT ; 
 int /*<<< orphan*/  SER_RTS ; 
 struct rc_softc** FUNC1 (struct tty*) ; 
 int TS_ISOPEN ; 
 int /*<<< orphan*/  FUNC2 (struct rc_softc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct tty*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rc_softc*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct tty*) ; 
 int /*<<< orphan*/  FUNC8 (struct rc_softc**) ; 

__attribute__((used)) static void
FUNC9(struct tty *tp)
{
	struct rc_chans *rc;
	struct rc_softc *sc;
	int s;

	rc = tp->t_sc;
	sc = rc->rc_rcb;
	s = FUNC5();
	FUNC4(sc, CD180_CAR, rc->rc_chan);

	/* Disable rx/tx intrs */
	FUNC4(sc, CD180_IER, rc->rc_ier = 0);
	if (   (tp->t_cflag & HUPCL)
	    || (!(rc->rc_flags & RC_ACTOUT)
	       && !(rc->rc_msvr & MSVR_CD)
	       && !(tp->t_cflag & CLOCAL))
	    || !(tp->t_state & TS_ISOPEN)
	   ) {
		FUNC0(sc, rc->rc_chan, CCR_ResetChan);
		FUNC2(sc, rc->rc_chan);
		(void) FUNC3(tp, SER_RTS, 0);
		FUNC7(tp);
	}
	rc->rc_flags &= ~RC_ACTOUT;
	FUNC8( &rc->rc_rcb);  /* wake bi */
	FUNC8(FUNC1(tp));
	(void) FUNC6(s);
}