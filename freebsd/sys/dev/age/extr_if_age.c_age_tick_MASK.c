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
struct mii_data {int dummy; } ;
struct age_softc {int /*<<< orphan*/  age_tick_ch; int /*<<< orphan*/  age_miibus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct age_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct age_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (void*),struct age_softc*) ; 
 struct mii_data* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC4 (struct mii_data*) ; 

__attribute__((used)) static void
FUNC5(void *arg)
{
	struct age_softc *sc;
	struct mii_data *mii;

	sc = (struct age_softc *)arg;

	FUNC0(sc);

	mii = FUNC3(sc->age_miibus);
	FUNC4(mii);
	FUNC1(sc);
	FUNC2(&sc->age_tick_ch, hz, age_tick, sc);
}