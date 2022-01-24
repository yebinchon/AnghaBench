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
typedef  int /*<<< orphan*/  uint8_t ;
struct pmu_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pmu_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct pmu_softc*) ; 
 scalar_t__ FUNC2 (struct pmu_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct pmu_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct pmu_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vSR ; 

__attribute__((used)) static int
FUNC5(struct pmu_softc *sc, uint8_t data)
{

	FUNC3(sc);
	FUNC4(sc, vSR, data);
	FUNC0(sc);
	/* wait for intr to come up */
	/* XXX should add a timeout and bail if it expires */
	do {} while (FUNC2(sc) == 0);
	FUNC1(sc);
	do {} while (FUNC2(sc));
	FUNC1(sc);
	return 0;
}