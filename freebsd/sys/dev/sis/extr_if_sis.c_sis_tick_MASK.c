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
struct sis_softc {int sis_flags; int /*<<< orphan*/  sis_stat_ch; int /*<<< orphan*/  sis_dev; int /*<<< orphan*/  sis_miibus; } ;
struct mii_data {int dummy; } ;

/* Variables and functions */
 int SIS_FLAG_LINK ; 
 int /*<<< orphan*/  FUNC0 (struct sis_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (void*),struct sis_softc*) ; 
 struct mii_data* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC3 (struct mii_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sis_softc*) ; 

__attribute__((used)) static void
FUNC6(void *xsc)
{
	struct sis_softc	*sc;
	struct mii_data		*mii;

	sc = xsc;
	FUNC0(sc);

	mii = FUNC2(sc->sis_miibus);
	FUNC3(mii);
	FUNC5(sc);
	if ((sc->sis_flags & SIS_FLAG_LINK) == 0)
		FUNC4(sc->sis_dev);
	FUNC1(&sc->sis_stat_ch, hz,  sis_tick, sc);
}