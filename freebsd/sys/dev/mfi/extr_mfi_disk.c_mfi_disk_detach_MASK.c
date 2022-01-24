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
struct mfi_disk {int ld_flags; int /*<<< orphan*/  ld_info; TYPE_1__* ld_controller; TYPE_2__* ld_disk; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_4__ {int d_flags; } ;
struct TYPE_3__ {int /*<<< orphan*/  mfi_io_lock; int /*<<< orphan*/  mfi_ld_tqh; scalar_t__ mfi_detaching; scalar_t__ mfi_keep_deleted_volumes; } ;

/* Variables and functions */
 int DISKFLAG_OPEN ; 
 int EBUSY ; 
 int MFI_DISK_FLAGS_OPEN ; 
 int /*<<< orphan*/  M_MFIBUF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct mfi_disk*,int /*<<< orphan*/ ) ; 
 struct mfi_disk* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ld_link ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	struct mfi_disk *sc;

	sc = FUNC1(dev);

	FUNC4(&sc->ld_controller->mfi_io_lock);
	if (((sc->ld_disk->d_flags & DISKFLAG_OPEN) ||
	    (sc->ld_flags & MFI_DISK_FLAGS_OPEN)) &&
	    (sc->ld_controller->mfi_keep_deleted_volumes ||
	    sc->ld_controller->mfi_detaching)) {
		FUNC5(&sc->ld_controller->mfi_io_lock);
		return (EBUSY);
	}
	FUNC5(&sc->ld_controller->mfi_io_lock);

	FUNC2(sc->ld_disk);
	FUNC4(&sc->ld_controller->mfi_io_lock);
	FUNC0(&sc->ld_controller->mfi_ld_tqh, sc, ld_link);
	FUNC5(&sc->ld_controller->mfi_io_lock);
	FUNC3(sc->ld_info, M_MFIBUF);
	return (0);
}