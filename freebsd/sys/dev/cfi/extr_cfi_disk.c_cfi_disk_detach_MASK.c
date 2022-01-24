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
struct cfi_disk_softc {int flags; int /*<<< orphan*/  qlock; int /*<<< orphan*/  disk; int /*<<< orphan*/  tq; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int CFI_DISK_OPEN ; 
 int EBUSY ; 
 struct cfi_disk_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	struct cfi_disk_softc *sc = FUNC0(dev);

	if (sc->flags & CFI_DISK_OPEN)
		return EBUSY;
	FUNC3(sc->tq);
	/* XXX drain bioq */
	FUNC1(sc->disk);
	FUNC2(&sc->qlock);
	return 0;
}