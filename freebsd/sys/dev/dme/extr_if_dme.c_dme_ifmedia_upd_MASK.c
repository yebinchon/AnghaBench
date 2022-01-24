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
struct ifnet {struct dme_softc* if_softc; } ;
struct dme_softc {int /*<<< orphan*/  dme_miibus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dme_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct dme_softc*) ; 
 struct mii_data* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mii_data*) ; 

__attribute__((used)) static int
FUNC4(struct ifnet *ifp)
{
	struct dme_softc *sc;
	struct mii_data *mii;

	sc = ifp->if_softc;
	mii = FUNC2(sc->dme_miibus);

	FUNC0(sc);
	FUNC3(mii);
	FUNC1(sc);

	return (0);
}