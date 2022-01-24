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
struct tsec_softc {struct mii_data* tsec_mii; } ;
struct mii_data {int dummy; } ;
struct ifnet {struct tsec_softc* if_softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tsec_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct tsec_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct mii_data*) ; 

__attribute__((used)) static int
FUNC3(struct ifnet *ifp)
{
	struct tsec_softc *sc = ifp->if_softc;
	struct mii_data *mii;

	FUNC0(sc);

	mii = sc->tsec_mii;
	FUNC2(mii);

	FUNC1(sc);
	return (0);
}