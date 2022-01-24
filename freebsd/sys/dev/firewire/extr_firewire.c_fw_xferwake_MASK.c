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
struct mtx {int dummy; } ;
struct fw_xfer {int /*<<< orphan*/  flag; TYPE_1__* fc; } ;
struct TYPE_2__ {struct mtx wait_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FWXF_WAKE ; 
 int /*<<< orphan*/  FUNC0 (struct mtx*) ; 
 int /*<<< orphan*/  FUNC1 (struct mtx*) ; 
 int /*<<< orphan*/  FUNC2 (struct fw_xfer*) ; 

void
FUNC3(struct fw_xfer *xfer)
{
	struct mtx *lock = &xfer->fc->wait_lock;

	FUNC0(lock);
	xfer->flag |= FWXF_WAKE;
	FUNC1(lock);

	FUNC2(xfer);
	return;
}