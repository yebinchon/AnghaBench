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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  u_int ;
struct pci_dw_softc {int /*<<< orphan*/  dev; int /*<<< orphan*/ * dbi_res; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct pci_dw_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static uint32_t
FUNC6(device_t dev, u_int reg, int width)
{
	struct pci_dw_softc *sc;

	sc = FUNC4(dev);
	FUNC0(sc->dbi_res != NULL);

	switch (width) {
	case 4:
		return (FUNC3(sc->dbi_res, reg));
	case 2:
		return (FUNC2(sc->dbi_res, reg));
	case 1:
		return (FUNC1(sc->dbi_res, reg));
	default:
		FUNC5(sc->dev, "Unsupported width: %d\n", width);
		return (0xFFFFFFFF);
	}
}