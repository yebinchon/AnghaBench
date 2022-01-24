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
struct atkbdc_softc {int /*<<< orphan*/  mtx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct atkbdc_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct atkbdc_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(struct atkbdc_softc *sc, int iskbd)
{
	FUNC2(&sc->mtx);

	if (iskbd)
		FUNC1(sc);
	else
		FUNC0(sc);
	FUNC3(&sc->mtx);
}