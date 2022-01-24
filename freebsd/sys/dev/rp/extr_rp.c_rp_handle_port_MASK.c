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
struct rp_port {unsigned int rp_intmask; struct tty* rp_tty; int /*<<< orphan*/  rp_channel; } ;
typedef  int /*<<< orphan*/  CHANNEL_t ;

/* Variables and functions */
 unsigned int CD_ACT ; 
 unsigned int DELTA_CD ; 
 unsigned int RXF_TRIG ; 
 int /*<<< orphan*/  FUNC0 (struct rp_port*,struct tty*,int /*<<< orphan*/ *,unsigned int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct tty*,int) ; 

__attribute__((used)) static void FUNC4(struct rp_port *rp)
{
	CHANNEL_t	*cp;
	struct	tty	*tp;
	unsigned	int	IntMask, ChanStatus;

	if(!rp)
		return;

	cp = &rp->rp_channel;
	tp = rp->rp_tty;
	IntMask = FUNC1(cp);
	IntMask = IntMask & rp->rp_intmask;
	ChanStatus = FUNC2(cp);
	if(IntMask & RXF_TRIG)
		FUNC0(rp, tp, cp, ChanStatus);
	if(IntMask & DELTA_CD) {
		if(ChanStatus & CD_ACT) {
			(void)FUNC3(tp, 1);
		} else {
			(void)FUNC3(tp, 0);
		}
	}
/*	oldcts = rp->rp_cts;
	rp->rp_cts = ((ChanStatus & CTS_ACT) != 0);
	if(oldcts != rp->rp_cts) {
		printf("CTS change (now %s)... on port %d\n", rp->rp_cts ? "on" : "off", rp->rp_port);
	}
*/
}