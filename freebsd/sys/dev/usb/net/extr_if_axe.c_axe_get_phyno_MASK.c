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
struct axe_softc {int /*<<< orphan*/ * sc_phyaddrs; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
#define  PHY_TYPE_100_HOME 132 
#define  PHY_TYPE_GIG 131 
#define  PHY_TYPE_NON_SUP 130 
#define  PHY_TYPE_RSVD 129 
#define  PHY_TYPE_SPECIAL 128 

__attribute__((used)) static int
FUNC2(struct axe_softc *sc, int sel)
{
	int phyno;

	switch (FUNC1(sc->sc_phyaddrs[sel])) {
	case PHY_TYPE_100_HOME:
	case PHY_TYPE_GIG:
		phyno = FUNC0(sc->sc_phyaddrs[sel]);
		break;
	case PHY_TYPE_SPECIAL:
		/* FALLTHROUGH */
	case PHY_TYPE_RSVD:
		/* FALLTHROUGH */
	case PHY_TYPE_NON_SUP:
		/* FALLTHROUGH */
	default:
		phyno = -1;
		break;
	}

	return (phyno);
}