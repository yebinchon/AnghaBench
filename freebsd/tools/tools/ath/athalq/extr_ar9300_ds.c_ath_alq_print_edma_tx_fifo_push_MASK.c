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
struct if_ath_alq_tx_fifo_push {int /*<<< orphan*/  frame_cnt; int /*<<< orphan*/  fifo_depth; int /*<<< orphan*/  nframes; int /*<<< orphan*/  txq; } ;
struct TYPE_2__ {int /*<<< orphan*/  tstamp_usec; int /*<<< orphan*/  tstamp_sec; int /*<<< orphan*/  threadid; } ;
struct if_ath_alq_payload {TYPE_1__ hdr; int /*<<< orphan*/  payload; } ;
typedef  int /*<<< orphan*/  p ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct if_ath_alq_tx_fifo_push*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned int,unsigned int,unsigned long long,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 

void
FUNC4(struct if_ath_alq_payload *a)
{
	struct if_ath_alq_tx_fifo_push p;

	FUNC2(&p, &a->payload, sizeof(p));
	FUNC3("[%u.%06u] [%llu] TXPUSH txq=%d, nframes=%d, fifodepth=%d, frmcount=%d\n",
	    (unsigned int) FUNC0(a->hdr.tstamp_sec),
	    (unsigned int) FUNC0(a->hdr.tstamp_usec),
	    (unsigned long long) FUNC1(a->hdr.threadid),
	    FUNC0(p.txq),
	    FUNC0(p.nframes),
	    FUNC0(p.fifo_depth),
	    FUNC0(p.frame_cnt));
}