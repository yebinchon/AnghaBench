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
struct dme_softc {int /*<<< orphan*/  dme_tick_ch; int /*<<< orphan*/  dme_miibus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (void*),struct dme_softc*) ; 
 struct mii_data* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC2 (struct mii_data*) ; 

__attribute__((used)) static void
FUNC3(void *arg)
{
	struct dme_softc *sc;
	struct mii_data *mii;

	sc = (struct dme_softc *)arg;

	/* Probably too frequent? */
	mii = FUNC1(sc->dme_miibus);
	FUNC2(mii);

	FUNC0(&sc->dme_tick_ch, hz, dme_tick, sc);
}