#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct tty {int dummy; } ;
struct TYPE_16__ {int* TxControl; } ;
struct rp_port {unsigned int rp_intmask; TYPE_1__* rp_ctlp; int /*<<< orphan*/  rp_timer; TYPE_2__ rp_channel; } ;
struct TYPE_15__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int CHANINT_EN ; 
 int MCINT_EN ; 
 int /*<<< orphan*/  POLL_INTERVAL ; 
 int RXINT_EN ; 
 int SET_DTR ; 
 int SET_RTS ; 
 int SRCINT_EN ; 
 int /*<<< orphan*/  TRIG_1 ; 
 int TXINT_EN ; 
 int /*<<< orphan*/  _INDX_ADDR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rp_port*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int /*<<< orphan*/  rp_do_poll ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 unsigned int FUNC12 (TYPE_2__*) ; 
 unsigned int FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 
 struct rp_port* FUNC16 (struct tty*) ; 

__attribute__((used)) static int
FUNC17(struct tty *tp)
{
	struct	rp_port *rp;
	int	flags;
	unsigned int	IntMask, ChanStatus;

	rp = FUNC16(tp);

	flags = 0;
	flags |= SET_RTS;
	flags |= SET_DTR;
	rp->rp_channel.TxControl[3] =
		((rp->rp_channel.TxControl[3]
		& ~(SET_RTS | SET_DTR)) | flags);
	FUNC3(&rp->rp_channel,_INDX_ADDR,
		FUNC2(rp->rp_channel.TxControl));
	FUNC14(&rp->rp_channel, TRIG_1);
	FUNC5(&rp->rp_channel);
	FUNC10(&rp->rp_channel);
	FUNC11(&rp->rp_channel);

	FUNC7(&rp->rp_channel,
		(TXINT_EN|MCINT_EN|RXINT_EN|SRCINT_EN|CHANINT_EN));
	FUNC14(&rp->rp_channel, TRIG_1);

	FUNC5(&rp->rp_channel);
	FUNC4(&rp->rp_channel);

/*	sDisRTSFlowCtl(&rp->rp_channel);
	sDisCTSFlowCtl(&rp->rp_channel);
*/
	FUNC6(&rp->rp_channel);

	FUNC15(&rp->rp_channel);

	FUNC8(&rp->rp_channel);
	FUNC9(&rp->rp_channel);

/*	sSetDTR(&rp->rp_channel);
	sSetRTS(&rp->rp_channel);
*/

	IntMask = FUNC12(&rp->rp_channel);
	IntMask = IntMask & rp->rp_intmask;
	ChanStatus = FUNC13(&rp->rp_channel);

	FUNC0(&rp->rp_timer, POLL_INTERVAL, rp_do_poll, rp);

	FUNC1(rp->rp_ctlp->dev);
	return(0);
}