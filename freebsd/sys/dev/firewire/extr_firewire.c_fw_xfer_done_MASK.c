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
struct fw_xfer {int /*<<< orphan*/  (* hand ) (struct fw_xfer*) ;int /*<<< orphan*/ * fc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct fw_xfer*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct fw_xfer*) ; 

void
FUNC4(struct fw_xfer *xfer)
{
	if (xfer->hand == NULL) {
		FUNC2("hand == NULL\n");
		return;
	}

	if (xfer->fc == NULL)
		FUNC1("fw_xfer_done: why xfer->fc is NULL?");

	FUNC0(xfer->fc, xfer);
	xfer->hand(xfer);
}