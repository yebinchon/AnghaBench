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
typedef  int u_char ;
struct seq_softc {int unit; int timerbase; int tempo; int /*<<< orphan*/  music; int /*<<< orphan*/  reset_cv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int SEQ_ECHO ; 
#define  TMR_CONTINUE 135 
#define  TMR_ECHO 134 
#define  TMR_START 133 
#define  TMR_STOP 132 
#define  TMR_TEMPO 131 
#define  TMR_TIMERBASE 130 
#define  TMR_WAIT_ABS 129 
#define  TMR_WAIT_REL 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_softc*,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct seq_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct seq_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct seq_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct seq_softc*,int,int) ; 

__attribute__((used)) static int
FUNC9(struct seq_softc *scp, u_char *event)
{
	int param;
	int ret;

	ret = 0;
	param = event[4] + (event[5] << 8) +
	    (event[6] << 16) + (event[7] << 24);

	FUNC0(5, FUNC2("seq_timing: unit %d, cmd %d, param %d.\n",
	    scp->unit, event[1], param));
	switch (event[1]) {
	case TMR_WAIT_REL:
		FUNC8(scp, param, 0);
		break;
	case TMR_WAIT_ABS:
		FUNC8(scp, param, 1);
		break;
	case TMR_START:
		FUNC6(scp);
		FUNC1(&scp->reset_cv);
		break;
	case TMR_STOP:
		FUNC7(scp);
		/*
		 * The following cv_broadcast isn't needed since we only
		 * wait for 0->1 transitions.  It probably won't hurt
		 */
		FUNC1(&scp->reset_cv);
		break;
	case TMR_CONTINUE:
		FUNC4(scp);
		FUNC1(&scp->reset_cv);
		break;
	case TMR_TEMPO:
		if (param < 8)
			param = 8;
		if (param > 360)
			param = 360;
		FUNC0(4, FUNC2("Timer set tempo %d\n", param));
		FUNC5(scp, param, scp->timerbase);
		break;
	case TMR_TIMERBASE:
		if (param < 1)
			param = 1;
		if (param > 1000)
			param = 1000;
		FUNC0(4, FUNC2("Timer set timerbase %d\n", param));
		FUNC5(scp, scp->tempo, param);
		break;
	case TMR_ECHO:
		/*
		 * TODO: Consider making 4-byte events for /dev/sequencer
		 * PRO: Maybe needed by legacy apps
		 * CON: soundcard.h has been warning for a while many years
		 * to expect 8 byte events.
		 */
#if 0
		if (scp->music)
			seq_copytoinput(scp, event, 8);
		else {
			param = (param << 8 | SEQ_ECHO);
			seq_copytoinput(scp, (u_char *)&param, 4);
		}
#else
		FUNC3(scp, event, 8);
#endif
		break;
	default:
		FUNC0(2, FUNC2("seq_timing event type %d not handled.\n",
		    event[1]));
		ret = 1;
		break;
	}
	return ret;
}