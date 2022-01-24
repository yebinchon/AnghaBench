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
typedef  scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ rc_rcv_epoch_start; } ;
struct tcp_bbr {int /*<<< orphan*/  rc_is_pkt_epoch_now; TYPE_1__ r_ctl; } ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  BBR_RTT_PROP ; 
 scalar_t__ FUNC0 (struct tcp_bbr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tcp_bbr*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (struct tcp_bbr*,scalar_t__,int,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC3(struct tcp_bbr *bbr, uint32_t cts, int32_t line, uint32_t losses)
{
	int32_t epoch = 0;

	if ((cts - bbr->r_ctl.rc_rcv_epoch_start) >= FUNC0(bbr, BBR_RTT_PROP)) {
		FUNC1(bbr, cts, line);
		/* At each epoch doe lt bw sampling */
		epoch = 1;
	}
	FUNC2(bbr, cts, epoch, bbr->rc_is_pkt_epoch_now, losses);
}