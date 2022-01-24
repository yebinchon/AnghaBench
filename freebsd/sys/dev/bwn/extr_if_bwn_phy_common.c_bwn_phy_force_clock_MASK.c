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
typedef  scalar_t__ uint32_t ;
struct bwn_softc {int /*<<< orphan*/  sc_dev; } ;
struct bwn_mac {struct bwn_softc* mac_sc; } ;

/* Variables and functions */
 scalar_t__ BHND_IOCTL_CLK_FORCE ; 
 int FUNC0 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 

int
FUNC2(struct bwn_mac *mac, int force)
{
	struct bwn_softc	*sc;
	uint32_t		 val, mask;
	int			 error;

	sc = mac->mac_sc;

	/* XXX Only for N, HT and AC PHYs */
	mask = BHND_IOCTL_CLK_FORCE;
	if (force) {
		val = BHND_IOCTL_CLK_FORCE;
	} else {
		val = 0;
	}

	if ((error = FUNC0(sc->sc_dev, val, mask))) {
		FUNC1(sc->sc_dev, "failed to set CLK_FORCE ioctl flag: "
		    "%d\n", error);
		return (error);
	}

	return (0);
}