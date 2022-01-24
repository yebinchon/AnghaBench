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
 scalar_t__ BWN_IOCTL_MACPHYCLKEN ; 
 int FUNC0 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 

int
FUNC2(struct bwn_mac *mac, int enabled)
{
	struct bwn_softc	*sc;
	uint32_t		 val, mask;
	int			 error;

	sc = mac->mac_sc;

	mask = BWN_IOCTL_MACPHYCLKEN;
	if (enabled) {
		val = BWN_IOCTL_MACPHYCLKEN;
	} else {
		val = 0;
	}

	if ((error = FUNC0(sc->sc_dev, val, mask))) {
		FUNC1(sc->sc_dev, "failed to set MACPHYCLKEN ioctl "
		    "flag: %d\n", error);
		return (error);
	}

	return (0);
}