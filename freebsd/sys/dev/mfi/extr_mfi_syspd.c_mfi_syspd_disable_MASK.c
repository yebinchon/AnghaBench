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
struct mfi_system_pd {int pd_flags; int /*<<< orphan*/  pd_dev; TYPE_1__* pd_controller; } ;
struct TYPE_2__ {scalar_t__ mfi_delete_busy_volumes; int /*<<< orphan*/  mfi_io_lock; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int MFI_DISK_FLAGS_DISABLED ; 
 int MFI_DISK_FLAGS_OPEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC2(struct mfi_system_pd *sc)
{

	FUNC0(sc->pd_dev, "syspd disable \n");
	FUNC1(&sc->pd_controller->mfi_io_lock, MA_OWNED);
	if (sc->pd_flags & MFI_DISK_FLAGS_OPEN) {
		if (sc->pd_controller->mfi_delete_busy_volumes)
			return (0);
		FUNC0(sc->pd_dev,
		    "Unable to delete busy syspd device\n");
		return (EBUSY);
	}
	sc->pd_flags |= MFI_DISK_FLAGS_DISABLED;
	return (0);
}