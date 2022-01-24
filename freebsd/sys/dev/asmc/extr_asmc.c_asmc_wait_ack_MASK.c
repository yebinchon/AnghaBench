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
typedef  int uint8_t ;
typedef  int u_int ;
struct asmc_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (struct asmc_softc*) ; 
 int ASMC_STATUS_MASK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct asmc_softc* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev, uint8_t val, int amount)
{
	struct asmc_softc *sc = FUNC2(dev);
	u_int i;

	val = val & ASMC_STATUS_MASK;

	for (i = 0; i < amount; i++) {
		if ((FUNC0(sc) & ASMC_STATUS_MASK) == val)
			return (0);
		FUNC1(10);
	}

	return (1);
}