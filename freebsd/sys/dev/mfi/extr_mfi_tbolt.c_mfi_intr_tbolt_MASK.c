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
struct mfi_softc {int (* mfi_check_clear_intr ) (struct mfi_softc*) ;int /*<<< orphan*/  mfi_io_lock; int /*<<< orphan*/  mfi_flags; scalar_t__ mfi_detaching; } ;

/* Variables and functions */
 int /*<<< orphan*/  MFI_FLAGS_QFRZN ; 
 int /*<<< orphan*/  FUNC0 (struct mfi_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct mfi_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct mfi_softc*) ; 

void
FUNC5(void *arg)
{
	struct mfi_softc *sc = (struct mfi_softc *)arg;

	if (sc->mfi_check_clear_intr(sc) == 1) {
		return;
	}
	if (sc->mfi_detaching)
		return;
	FUNC2(&sc->mfi_io_lock);
	FUNC1(sc);
	sc->mfi_flags &= ~MFI_FLAGS_QFRZN;
	FUNC0(sc);
	FUNC3(&sc->mfi_io_lock);
	return;
}