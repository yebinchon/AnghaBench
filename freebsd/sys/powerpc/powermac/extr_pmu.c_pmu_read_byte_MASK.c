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
typedef  void* uint8_t ;
struct pmu_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pmu_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct pmu_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct pmu_softc*) ; 
 scalar_t__ FUNC3 (struct pmu_softc*) ; 
 void* FUNC4 (struct pmu_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vSR ; 

__attribute__((used)) static inline int
FUNC5(struct pmu_softc *sc, uint8_t *data)
{
	volatile uint8_t scratch;
	FUNC2(sc);
	scratch = FUNC4(sc, vSR);
	FUNC0(sc);
	/* wait for intr to come up */
	do {} while (FUNC3(sc) == 0);
	FUNC1(sc);
	do {} while (FUNC3(sc));
	*data = FUNC4(sc, vSR);
	return 0;
}