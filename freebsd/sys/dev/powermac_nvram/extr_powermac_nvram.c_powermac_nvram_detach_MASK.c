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
struct powermac_nvram_softc {int /*<<< orphan*/ * sc_cdev; scalar_t__ sc_bank0; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int NVRAM_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct powermac_nvram_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	struct powermac_nvram_softc *sc;

	sc = FUNC1(dev);

	if ((void *)sc->sc_bank0 != NULL)
		FUNC2(sc->sc_bank0, NVRAM_SIZE * 2);

	if (sc->sc_cdev != NULL)
		FUNC0(sc->sc_cdev);
	
	return 0;
}