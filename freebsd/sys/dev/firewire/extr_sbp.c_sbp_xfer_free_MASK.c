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
struct sbp_dev {TYPE_1__* target; } ;
struct fw_xfer {scalar_t__ sc; } ;
struct TYPE_2__ {int /*<<< orphan*/  xferlist; int /*<<< orphan*/  sbp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct fw_xfer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fw_xfer*) ; 
 int /*<<< orphan*/  link ; 

__attribute__((used)) static __inline void
FUNC3(struct fw_xfer *xfer)
{
	struct sbp_dev *sdev;

	sdev = (struct sbp_dev *)xfer->sc;
	FUNC2(xfer);
	FUNC0(sdev->target->sbp);
	FUNC1(&sdev->target->xferlist, xfer, link);
}