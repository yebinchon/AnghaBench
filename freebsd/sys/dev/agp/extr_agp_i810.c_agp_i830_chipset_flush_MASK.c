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
typedef  unsigned int uint32_t ;
struct agp_i810_softc {int /*<<< orphan*/ * sc_res; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  AGP_I830_HIC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 struct agp_i810_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void
FUNC5(device_t dev)
{
	struct agp_i810_softc *sc;
	uint32_t hic;
	int i;

	sc = FUNC3(dev);
	FUNC4();
	hic = FUNC1(sc->sc_res[0], AGP_I830_HIC);
	FUNC2(sc->sc_res[0], AGP_I830_HIC, hic | (1U << 31));
	for (i = 0; i < 20000 /* 1 sec */; i++) {
		hic = FUNC1(sc->sc_res[0], AGP_I830_HIC);
		if ((hic & (1U << 31)) == 0)
			break;
		FUNC0(50);
	}
}