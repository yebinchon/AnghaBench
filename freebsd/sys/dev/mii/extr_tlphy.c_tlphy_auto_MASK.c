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
struct tlphy_softc {int sc_need_acomp; int /*<<< orphan*/  sc_mii; } ;

/* Variables and functions */
#define  EIO 129 
#define  EJUSTRETURN 128 
 int /*<<< orphan*/  MII_BMCR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct tlphy_softc*) ; 

__attribute__((used)) static int
FUNC3(struct tlphy_softc *sc)
{
	int error;

	switch ((error = FUNC1(&sc->sc_mii))) {
	case EIO:
		/*
		 * Just assume we're not in full-duplex mode.
		 * XXX Check link and try AUI/BNC?
		 */
		FUNC0(&sc->sc_mii, MII_BMCR, 0);
		break;

	case EJUSTRETURN:
		/* Flag that we need to program when it completes. */
		sc->sc_need_acomp = 1;
		break;

	default:
		FUNC2(sc);
	}

	return (error);
}