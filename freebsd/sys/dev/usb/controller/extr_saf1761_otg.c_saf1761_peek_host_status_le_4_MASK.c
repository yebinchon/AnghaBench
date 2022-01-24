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
typedef  scalar_t__ uint32_t ;
struct saf1761_otg_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct saf1761_otg_softc*) ; 
 scalar_t__ FUNC2 (struct saf1761_otg_softc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct saf1761_otg_softc*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  SOTG_MEMORY_REG ; 

__attribute__((used)) static uint32_t
FUNC4(struct saf1761_otg_softc *sc, uint32_t offset)
{
	uint32_t x = 0;
	while (1) {
		uint32_t retval;

		FUNC3(sc, SOTG_MEMORY_REG, offset);
		FUNC1(sc);	/* read prefetch time is 90ns */
		retval = FUNC2(sc, offset);
		if (retval != 0)
			return (retval);
		if (++x == 8) {
			FUNC0("STAUS is zero at offset 0x%x\n", offset);
			break;
		}
	}
	return (0);
}