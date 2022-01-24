#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct tty {int dummy; } ;
struct rp_port {int rp_aiop; int rp_chan; int rp_restart; int /*<<< orphan*/  rp_timer; int /*<<< orphan*/  rp_channel; TYPE_1__* rp_ctlp; struct tty* rp_tty; } ;
struct TYPE_4__ {unsigned char (* ctlmask ) (TYPE_1__*) ;} ;
typedef  TYPE_1__ CONTROLLER_t ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  POLL_INTERVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rp_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct tty*) ; 
 unsigned char FUNC3 (TYPE_1__*,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 unsigned char FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (struct tty*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(void *arg)
{
	CONTROLLER_t	*ctl;
	struct rp_port	*rp;
	struct tty	*tp;
	int	count;
	unsigned char	CtlMask, AiopMask;

	rp = arg;
	tp = rp->rp_tty;
	FUNC6(tp, MA_OWNED);
	ctl = rp->rp_ctlp;
	CtlMask = ctl->ctlmask(ctl);
	if (CtlMask & (1 << rp->rp_aiop)) {
		AiopMask = FUNC3(ctl, rp->rp_aiop);
		if (AiopMask & (1 << rp->rp_chan)) {
			FUNC1(rp);
		}
	}

	count = FUNC4(&rp->rp_channel);
	if (count >= 0  && (count <= rp->rp_restart)) {
		FUNC2(tp);
	}
	FUNC0(&rp->rp_timer, POLL_INTERVAL);
}