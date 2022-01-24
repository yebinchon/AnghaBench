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
struct tty {int dummy; } ;
struct rp_port {int /*<<< orphan*/  rp_overflows; } ;
typedef  int /*<<< orphan*/  CHANNEL_t ;

/* Variables and functions */
 unsigned int RXBREAK ; 
 unsigned int RXFOVERFL ; 
 unsigned int RXFRAME ; 
 unsigned int RXPARITY ; 
 unsigned int STATMODE ; 
 unsigned int STMBREAK ; 
 unsigned int STMFRAMEH ; 
 unsigned int STMPARITYH ; 
 unsigned int STMRCVROVRH ; 
 int TRE_FRAMING ; 
 int TRE_OVERRUN ; 
 int TRE_PARITY ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct tty*) ; 
 int /*<<< orphan*/  FUNC7 (struct tty*) ; 
 int /*<<< orphan*/  FUNC8 (struct tty*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct tty*) ; 

__attribute__((used)) static void FUNC10(struct rp_port *rp, struct tty *tp,
			CHANNEL_t *cp, unsigned int ChanStatus)
{
	unsigned	int	CharNStat;
	int	ToRecv, ch, err = 0;

	ToRecv = FUNC4(cp);
	if(ToRecv == 0)
		return;

/*	If status indicates there are errored characters in the
	FIFO, then enter status mode (a word in FIFO holds
	characters and status)
*/

	if(ChanStatus & (RXFOVERFL | RXBREAK | RXFRAME | RXPARITY)) {
		if(!(ChanStatus & STATMODE)) {
			ChanStatus |= STATMODE;
			FUNC3(cp);
		}
	}
/*
	if we previously entered status mode then read down the
	FIFO one word at a time, pulling apart the character and
	the status. Update error counters depending on status.
*/
	FUNC6(tp);
	if(ChanStatus & STATMODE) {
		while(ToRecv) {
			CharNStat = FUNC1(cp,FUNC5(cp));
			ch = CharNStat & 0xff;

			if((CharNStat & STMBREAK) || (CharNStat & STMFRAMEH))
				err |= TRE_FRAMING;
			else if (CharNStat & STMPARITYH)
				err |= TRE_PARITY;
			else if (CharNStat & STMRCVROVRH) {
				rp->rp_overflows++;
				err |= TRE_OVERRUN;
			}

			FUNC8(tp, ch, err);
			ToRecv--;
		}
/*
	After emtying FIFO in status mode, turn off status mode
*/

		if(FUNC4(cp) == 0) {
			FUNC2(cp);
		}
	} else {
		ToRecv = FUNC4(cp);
		while (ToRecv) {
			ch = FUNC0(cp,FUNC5(cp));
			FUNC8(tp, ch & 0xff, err);
			ToRecv--;
		}
	}
        FUNC9(tp);
        FUNC7(tp);
}