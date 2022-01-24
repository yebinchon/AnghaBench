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
struct vte_softc {int /*<<< orphan*/  vte_tick_ch; int /*<<< orphan*/  vte_miibus; } ;
struct mii_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vte_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (void*),struct vte_softc*) ; 
 struct mii_data* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC3 (struct mii_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct vte_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct vte_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct vte_softc*) ; 

__attribute__((used)) static void
FUNC7(void *arg)
{
	struct vte_softc *sc;
	struct mii_data *mii;

	sc = (struct vte_softc *)arg;

	FUNC0(sc);

	mii = FUNC2(sc->vte_miibus);
	FUNC3(mii);
	FUNC4(sc);
	FUNC5(sc);
	FUNC6(sc);
	FUNC1(&sc->vte_tick_ch, hz, vte_tick, sc);
}