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
struct mfi_system_pd {TYPE_1__* pd_controller; int /*<<< orphan*/  pd_flags; } ;
struct disk {struct mfi_system_pd* d_drv1; } ;
struct TYPE_2__ {int /*<<< orphan*/  mfi_io_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  MFI_DISK_FLAGS_OPEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2(struct disk *dp)
{
	struct mfi_system_pd *sc;

	sc = dp->d_drv1;
	FUNC0(&sc->pd_controller->mfi_io_lock);
	sc->pd_flags &= ~MFI_DISK_FLAGS_OPEN;
	FUNC1(&sc->pd_controller->mfi_io_lock);

	return (0);
}