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
struct amrd_softc {TYPE_1__* amrd_disk; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int d_flags; } ;

/* Variables and functions */
 int DISKFLAG_OPEN ; 
 int EBUSY ; 
 scalar_t__ amr_disks_registered ; 
 int /*<<< orphan*/  amrddisk_cdevsw ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
    struct amrd_softc *sc = (struct amrd_softc *)FUNC2(dev);

    FUNC1(1);

    if (sc->amrd_disk->d_flags & DISKFLAG_OPEN)
	return(EBUSY);

#ifdef FREEBSD_4
    if (--amr_disks_registered == 0)
	cdevsw_remove(&amrddisk_cdevsw);
#else
    FUNC3(sc->amrd_disk);
#endif
    return(0);
}