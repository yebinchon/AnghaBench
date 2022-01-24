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
struct puc_softc {int sc_msi; int sc_irid; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct puc_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  puc_msi_disable ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	struct puc_softc *sc;
	int error, count;

	sc = FUNC0(dev);

	if (!puc_msi_disable) {
		count = 1;

		if (FUNC1(dev, &count) == 0) {
			sc->sc_msi = 1;
			sc->sc_irid = 1;
		}
	}

	error = FUNC3(dev);

	if (error != 0 && sc->sc_msi)
		FUNC2(dev);

	return (error);
}