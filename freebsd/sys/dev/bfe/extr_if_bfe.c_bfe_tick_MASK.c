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
struct bfe_softc {int /*<<< orphan*/  bfe_stat_co; int /*<<< orphan*/  bfe_miibus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bfe_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct bfe_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct bfe_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (void*),struct bfe_softc*) ; 
 struct mii_data* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC5 (struct mii_data*) ; 

__attribute__((used)) static void
FUNC6(void *xsc)
{
	struct bfe_softc *sc = xsc;
	struct mii_data *mii;

	FUNC0(sc);

	mii = FUNC4(sc->bfe_miibus);
	FUNC5(mii);
	FUNC1(sc);
	FUNC2(sc);
	FUNC3(&sc->bfe_stat_co, hz, bfe_tick, sc);
}