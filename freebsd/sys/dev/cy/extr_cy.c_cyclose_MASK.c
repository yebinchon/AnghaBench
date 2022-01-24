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
struct TYPE_2__ {int c_cflag; } ;
struct tty {int t_cflag; int t_state; scalar_t__ t_actout; TYPE_1__ t_init_in; struct com_s* t_sc; } ;
struct com_s {int unit; int intr_enable; int prev_modem_status; int channel_control; struct tty* tp; int /*<<< orphan*/ * cor; int /*<<< orphan*/  etc; int /*<<< orphan*/  iobase; } ;
typedef  int /*<<< orphan*/  cy_addr ;

/* Variables and functions */
 int CD1400_CCR_CMDCHANCTL ; 
 int CD1400_CCR_CMDRESET ; 
 int CD1400_CCR_FTF ; 
 int CD1400_CCR_RCVDIS ; 
 int CD1400_CCR_XMTEN ; 
 int /*<<< orphan*/  CD1400_COR2 ; 
 int /*<<< orphan*/  CD1400_COR2_ETC ; 
 int /*<<< orphan*/  CD1400_ETC_STOPBREAK ; 
 int CD1400_MSVR2_CD ; 
 int /*<<< orphan*/  CD1400_SRER ; 
 int CLOCAL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  ETC_NONE ; 
 scalar_t__ FALSE ; 
 int HUPCL ; 
 int /*<<< orphan*/  SER_DTR ; 
 scalar_t__* FUNC2 (struct tty*) ; 
 int TS_ISOPEN ; 
 int /*<<< orphan*/  FUNC3 (struct com_s*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct com_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct com_s*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct tty*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (struct tty*) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__*) ; 

__attribute__((used)) static void
FUNC13(struct tty *tp)
{
	cy_addr		iobase;
	struct com_s	*com;
	int		s;
	int		unit;

	com = tp->t_sc;
	unit = com->unit;
	iobase = com->iobase;
	s = FUNC9();
	/* XXX */
	FUNC6();
	FUNC0();
	com->etc = ETC_NONE;
	FUNC5(com, CD1400_COR2, com->cor[1] &= ~CD1400_COR2_ETC);
	FUNC1();
	FUNC7();
	FUNC4(com, CD1400_ETC_STOPBREAK);
	FUNC3(com, CD1400_CCR_CMDRESET | CD1400_CCR_FTF);

	{
		FUNC6();
		FUNC0();
		FUNC5(com, CD1400_SRER, com->intr_enable = 0);
		FUNC1();
		FUNC7();
		tp = com->tp;
		if ((tp->t_cflag & HUPCL)
		    /*
		     * XXX we will miss any carrier drop between here and the
		     * next open.  Perhaps we should watch DCD even when the
		     * port is closed; it is not sufficient to check it at
		     * the next open because it might go up and down while
		     * we're not watching.
		     */
		    || (!tp->t_actout
		       && !(com->prev_modem_status & CD1400_MSVR2_CD)
		       && !(tp->t_init_in.c_cflag & CLOCAL))
		    || !(tp->t_state & TS_ISOPEN)) {
			(void)FUNC8(tp, 0, SER_DTR);

			/* Disable receiver (leave transmitter enabled). */
			com->channel_control = CD1400_CCR_CMDCHANCTL
					       | CD1400_CCR_XMTEN
					       | CD1400_CCR_RCVDIS;
			FUNC3(com, com->channel_control);

			FUNC11(tp);
		}
	}
	tp->t_actout = FALSE;
	FUNC12(&tp->t_actout);
	FUNC12(FUNC2(tp));	/* restart any wopeners */
	FUNC10(s);
}