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
struct mfi_softc {int mfi_flags; int mfi_detaching; int /*<<< orphan*/  mfi_eh; int /*<<< orphan*/  mfi_config_lock; int /*<<< orphan*/  mfi_dev; int /*<<< orphan*/  mfi_io_lock; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MFI_FLAGS_OPEN ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int*) ; 
 struct mfi_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mfi_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct mfi_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct mfi_softc*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  shutdown_final ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC12(device_t dev)
{
	struct mfi_softc *sc;
	int error, devcount, i;
	device_t *devlist;

	sc = FUNC3(dev);

	FUNC10(&sc->mfi_config_lock);
	FUNC8(&sc->mfi_io_lock);
	if ((sc->mfi_flags & MFI_FLAGS_OPEN) != 0) {
		FUNC9(&sc->mfi_io_lock);
		FUNC11(&sc->mfi_config_lock);
		return (EBUSY);
	}
	sc->mfi_detaching = 1;
	FUNC9(&sc->mfi_io_lock);

	if ((error = FUNC2(sc->mfi_dev, &devlist, &devcount)) != 0) {
		FUNC11(&sc->mfi_config_lock);
		return error;
	}
	for (i = 0; i < devcount; i++)
		FUNC1(sc->mfi_dev, devlist[i]);
	FUNC4(devlist, M_TEMP);
	FUNC11(&sc->mfi_config_lock);

	FUNC0(shutdown_final, sc->mfi_eh);

	FUNC7(sc);
	FUNC5(sc);
	FUNC6(sc);
	return (0);
}