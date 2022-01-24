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
struct fire_softc {int sc_flags; int sc_msiq_count; int sc_msi_count; int* sc_msi_msiq_table; int sc_msi_first; int /*<<< orphan*/  sc_msi_mtx; int /*<<< orphan*/  sc_msi_bitmap; int /*<<< orphan*/  sc_msiq_bitmap; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int FIRE_MSIX ; 
 struct fire_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC5(device_t dev, device_t child, int *irq)
{
	struct fire_softc *sc;
	int i, msiq;

	sc = FUNC0(dev);
	if ((sc->sc_flags & FIRE_MSIX) == 0)
		return (ENXIO);
	FUNC2(&sc->sc_msi_mtx);
	msiq = 0;
	for (i = 0; i < sc->sc_msiq_count; i++) {
		if (FUNC1(sc->sc_msiq_bitmap, i) != 0) {
			msiq = i;
			break;
		}
	}
	if (i == sc->sc_msiq_count) {
		FUNC3(&sc->sc_msi_mtx);
		return (ENXIO);
	}
	for (i = sc->sc_msi_count - 1; i >= 0; i--) {
		if (FUNC1(sc->sc_msi_bitmap, i) != 0) {
			FUNC4(sc->sc_msiq_bitmap, msiq);
			FUNC4(sc->sc_msi_bitmap, i);
			sc->sc_msi_msiq_table[i] = msiq;
			*irq = sc->sc_msi_first + i;
			FUNC3(&sc->sc_msi_mtx);
			return (0);
		}
	}
	FUNC3(&sc->sc_msi_mtx);
	return (ENXIO);
}