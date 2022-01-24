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
struct fw_xfer {TYPE_1__* q; int /*<<< orphan*/ * mbuf; int /*<<< orphan*/  flag; struct firewire_comm* fc; } ;
struct firewire_comm {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* start ) (struct firewire_comm*) ;int /*<<< orphan*/  queued; int /*<<< orphan*/  q; } ;

/* Variables and functions */
 int /*<<< orphan*/  FWXF_INQ ; 
 int /*<<< orphan*/  FUNC0 (struct firewire_comm*) ; 
 int /*<<< orphan*/  FUNC1 (struct firewire_comm*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct fw_xfer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC3 (struct firewire_comm*) ; 

__attribute__((used)) static void
FUNC4(struct fw_xfer *xfer)
{
	struct firewire_comm *fc = xfer->fc;

	/* Protect from interrupt/timeout */
	FUNC0(fc);
	xfer->flag = FWXF_INQ;
	FUNC2(&xfer->q->q, xfer, link);
#if 0
	xfer->q->queued++;
#endif
	FUNC1(fc);
	/* XXX just queue for mbuf */
	if (xfer->mbuf == NULL)
		xfer->q->start(fc);
	return;
}