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
struct mfi_softc {int mfi_flags; int /*<<< orphan*/  mfi_ich; int /*<<< orphan*/  mfi_config_lock; int /*<<< orphan*/  mfi_io_lock; int /*<<< orphan*/  (* mfi_enable_intr ) (struct mfi_softc*) ;} ;

/* Variables and functions */
 int MFI_FLAGS_SKINNY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mfi_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct mfi_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct mfi_softc*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(void *arg)
{
	struct mfi_softc *sc;

	sc = (struct mfi_softc *)arg;

	sc->mfi_enable_intr(sc);
	FUNC6(&sc->mfi_config_lock);
	FUNC3(&sc->mfi_io_lock);
	FUNC1(sc);
	if (sc->mfi_flags & MFI_FLAGS_SKINNY)
	    FUNC2(sc);
	FUNC4(&sc->mfi_io_lock);
	FUNC7(&sc->mfi_config_lock);

	FUNC0(&sc->mfi_ich);
}