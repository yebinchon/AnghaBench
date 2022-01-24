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
typedef  int u_int ;
struct fire_softc {int* sc_msi_msiq_table; int sc_msi_first; int /*<<< orphan*/  sc_msi_mtx; int /*<<< orphan*/  sc_msi_bitmap; int /*<<< orphan*/  sc_msiq_bitmap; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 struct fire_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(device_t dev, device_t child, int count, int *irqs)
{
	struct fire_softc *sc;
	u_int i;

	sc = FUNC1(dev);
	FUNC2(&sc->sc_msi_mtx);
	for (i = 0; i < count; i++) {
		FUNC0(sc->sc_msiq_bitmap,
		    sc->sc_msi_msiq_table[irqs[i] - sc->sc_msi_first]);
		FUNC0(sc->sc_msi_bitmap, irqs[i] - sc->sc_msi_first);
	}
	FUNC3(&sc->sc_msi_mtx);
	return (0);
}