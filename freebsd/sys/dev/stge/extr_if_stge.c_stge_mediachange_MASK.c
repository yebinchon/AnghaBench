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
struct stge_softc {int /*<<< orphan*/  sc_miibus; } ;
struct mii_data {int dummy; } ;
struct ifnet {struct stge_softc* if_softc; } ;

/* Variables and functions */
 struct mii_data* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mii_data*) ; 

__attribute__((used)) static int
FUNC2(struct ifnet *ifp)
{
	struct stge_softc *sc;
	struct mii_data *mii;

	sc = ifp->if_softc;
	mii = FUNC0(sc->sc_miibus);
	FUNC1(mii);

	return (0);
}