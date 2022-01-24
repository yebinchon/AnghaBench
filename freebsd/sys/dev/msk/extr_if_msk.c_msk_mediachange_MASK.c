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
struct msk_if_softc {int /*<<< orphan*/  msk_miibus; } ;
struct mii_data {int dummy; } ;
struct ifnet {struct msk_if_softc* if_softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct msk_if_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct msk_if_softc*) ; 
 struct mii_data* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mii_data*) ; 

__attribute__((used)) static int
FUNC4(struct ifnet *ifp)
{
	struct msk_if_softc *sc_if;
	struct mii_data	*mii;
	int error;

	sc_if = ifp->if_softc;

	FUNC0(sc_if);
	mii = FUNC2(sc_if->msk_miibus);
	error = FUNC3(mii);
	FUNC1(sc_if);

	return (error);
}