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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  u_int ;
struct pci_dw_softc {int /*<<< orphan*/  dev; int /*<<< orphan*/ * dbi_res; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct pci_dw_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC6(device_t dev, u_int reg, uint32_t val, int width)
{
	struct pci_dw_softc *sc;

	sc = FUNC4(dev);
	FUNC0(sc->dbi_res != NULL);

	switch (width) {
	case 4:
		FUNC3(sc->dbi_res, reg, val);
		break;
	case 2:
		FUNC2(sc->dbi_res, reg, val);
		break;
	case 1:
		FUNC1(sc->dbi_res, reg, val);
		break;
	default:
		FUNC5(sc->dev, "Unsupported width: %d\n", width);
		break;
	}
}