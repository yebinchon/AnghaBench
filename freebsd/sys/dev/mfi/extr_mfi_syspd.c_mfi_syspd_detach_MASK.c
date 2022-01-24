#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mfi_system_pd {int pd_flags; int /*<<< orphan*/  pd_info; TYPE_1__* pd_controller; TYPE_2__* pd_disk; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_4__ {int d_flags; } ;
struct TYPE_3__ {int /*<<< orphan*/  mfi_io_lock; int /*<<< orphan*/  mfi_syspd_tqh; scalar_t__ mfi_detaching; scalar_t__ mfi_keep_deleted_volumes; } ;

/* Variables and functions */
 int DISKFLAG_OPEN ; 
 int EBUSY ; 
 int MFI_DISK_FLAGS_OPEN ; 
 int /*<<< orphan*/  M_MFIBUF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct mfi_system_pd*,int /*<<< orphan*/ ) ; 
 struct mfi_system_pd* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pd_link ; 

__attribute__((used)) static int
FUNC7(device_t dev)
{
	struct mfi_system_pd *sc;

	sc = FUNC1(dev);
	FUNC2(dev, "Detaching syspd\n");
	FUNC5(&sc->pd_controller->mfi_io_lock);
	if (((sc->pd_disk->d_flags & DISKFLAG_OPEN) ||
	    (sc->pd_flags & MFI_DISK_FLAGS_OPEN)) &&
	    (sc->pd_controller->mfi_keep_deleted_volumes ||
	    sc->pd_controller->mfi_detaching)) {
		FUNC6(&sc->pd_controller->mfi_io_lock);
		FUNC2(dev, "Cant detach syspd\n");
		return (EBUSY);
	}
	FUNC6(&sc->pd_controller->mfi_io_lock);

	FUNC3(sc->pd_disk);
	FUNC5(&sc->pd_controller->mfi_io_lock);
	FUNC0(&sc->pd_controller->mfi_syspd_tqh, sc, pd_link);
	FUNC6(&sc->pd_controller->mfi_io_lock);
	FUNC4(sc->pd_info, M_MFIBUF);
	return (0);
}