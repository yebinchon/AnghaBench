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
struct fw_xfer {int flag; scalar_t__ resp; int /*<<< orphan*/ * fc; TYPE_1__* q; } ;
struct TYPE_2__ {int /*<<< orphan*/  queued; int /*<<< orphan*/  q; } ;

/* Variables and functions */
 int FWXF_INIT ; 
 int FWXF_INQ ; 
 int FWXF_START ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct fw_xfer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct fw_xfer*) ; 
 int /*<<< orphan*/  fw_xfer ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

void
FUNC5(struct fw_xfer *xfer)
{

	if (xfer == NULL)
		return;

	if (xfer->fc != NULL) {
		FUNC0(xfer->fc);
		if (xfer->flag & FWXF_INQ) {
			FUNC2(&xfer->q->q, xfer, fw_xfer, link);
			xfer->flag &= ~FWXF_INQ;
	#if 0
			xfer->q->queued--;
	#endif
		}
		FUNC1(xfer->fc);

		/*
		 * Ensure that any tlabel owner can't access this
		 * xfer after it's freed.
		 */
		FUNC3(xfer->fc, xfer);
#if 1
		if (xfer->flag & FWXF_START)
			/*
			 * This could happen if:
			 *  1. We call fwohci_arcv() before fwohci_txd().
			 *  2. firewire_watch() is called.
			 */
			FUNC4("fw_xfer_free FWXF_START\n");
#endif
	}
	xfer->flag = FWXF_INIT;
	xfer->resp = 0;
}