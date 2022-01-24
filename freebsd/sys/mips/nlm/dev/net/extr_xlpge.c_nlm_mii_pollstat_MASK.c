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
struct nlm_xlpge_softc {int /*<<< orphan*/  xlpge_callout; scalar_t__ mii_bus; } ;
struct mii_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (void*),struct nlm_xlpge_softc*) ; 
 struct mii_data* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC3 (struct mii_data*) ; 

__attribute__((used)) static void
FUNC4(void *arg)
{
	struct nlm_xlpge_softc *sc = (struct nlm_xlpge_softc *)arg;
	struct mii_data *mii = NULL;

	if (sc->mii_bus) {
		mii = FUNC2(sc->mii_bus);

		FUNC0(mii != NULL, ("mii ptr is NULL"));

		FUNC3(mii);

		FUNC1(&sc->xlpge_callout, hz,
		    nlm_mii_pollstat, sc);
	}
}