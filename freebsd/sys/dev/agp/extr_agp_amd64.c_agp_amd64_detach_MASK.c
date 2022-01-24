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
struct agp_amd64_softc {int n_mctrl; int /*<<< orphan*/  gatt; int /*<<< orphan*/  initial_aperture; int /*<<< orphan*/ * mctrl; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  AGP_AMD64_APCTRL ; 
 int AGP_AMD64_APCTRL_GARTEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct agp_amd64_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int
FUNC7(device_t dev)
{
	struct agp_amd64_softc *sc = FUNC4(dev);
	int i;

	FUNC1(dev);

	for (i = 0; i < sc->n_mctrl; i++)
		FUNC6(0, sc->mctrl[i], 3, AGP_AMD64_APCTRL,
		    FUNC5(0, sc->mctrl[i], 3, AGP_AMD64_APCTRL, 4) &
		    ~AGP_AMD64_APCTRL_GARTEN, 4);

	FUNC0(dev, sc->initial_aperture);
	FUNC2(sc->gatt);
	FUNC3(dev);

	return (0);
}