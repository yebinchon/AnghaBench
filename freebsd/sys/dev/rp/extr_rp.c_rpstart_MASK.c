#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct tty {int dummy; } ;
struct TYPE_7__ {char* TxControl; } ;
struct rp_port {int /*<<< orphan*/ * TxBuf; scalar_t__ rp_xmit_stopped; TYPE_1__ rp_channel; } ;
typedef  TYPE_1__ CHANNEL_t ;

/* Variables and functions */
 int TXFIFO_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 struct rp_port* FUNC6 (struct tty*) ; 
 int FUNC7 (struct tty*,int /*<<< orphan*/ **,int) ; 

__attribute__((used)) static void
FUNC8(struct tty *tp)
{
	struct rp_port	*rp;
	CHANNEL_t	*cp;
	char	flags;
	int	xmit_fifo_room;
	int	i, count, wcount;

	rp = FUNC6(tp);
	cp = &rp->rp_channel;
	flags = rp->rp_channel.TxControl[3];

	if(rp->rp_xmit_stopped) {
		FUNC3(cp);
		rp->rp_xmit_stopped = 0;
	}

	xmit_fifo_room = TXFIFO_SIZE - FUNC4(cp);
	count = FUNC7(tp, &rp->TxBuf, xmit_fifo_room);
	if(xmit_fifo_room > 0) {
		for( i = 0, wcount = count >> 1; wcount > 0; i += 2, wcount-- ) {
			FUNC2(cp, FUNC5(cp), FUNC0(&rp->TxBuf[i]));
		}
		if ( count & 1 ) {
			FUNC1(cp, FUNC5(cp), rp->TxBuf[(count-1)]);
		}
	}
}