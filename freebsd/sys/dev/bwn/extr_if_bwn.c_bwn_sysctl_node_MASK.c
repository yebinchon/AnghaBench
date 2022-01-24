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
struct bwn_stats {int /*<<< orphan*/  rtsfail; int /*<<< orphan*/  rts; } ;
struct bwn_softc {int /*<<< orphan*/  sc_debug; struct bwn_mac* sc_curmac; int /*<<< orphan*/  sc_dev; } ;
struct bwn_mac {struct bwn_stats mac_stats; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  CTLFLAG_RW ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct bwn_softc *sc)
{
	device_t dev = sc->sc_dev;
	struct bwn_mac *mac;
	struct bwn_stats *stats;

	/* XXX assume that count of MAC is only 1. */

	if ((mac = sc->sc_curmac) == NULL)
		return;
	stats = &mac->mac_stats;

	FUNC0(FUNC3(dev),
	    FUNC2(FUNC4(dev)), OID_AUTO,
	    "linknoise", CTLFLAG_RW, &stats->rts, 0, "Noise level");
	FUNC0(FUNC3(dev),
	    FUNC2(FUNC4(dev)), OID_AUTO,
	    "rts", CTLFLAG_RW, &stats->rts, 0, "RTS");
	FUNC0(FUNC3(dev),
	    FUNC2(FUNC4(dev)), OID_AUTO,
	    "rtsfail", CTLFLAG_RW, &stats->rtsfail, 0, "RTS failed to send");

#ifdef BWN_DEBUG
	SYSCTL_ADD_UINT(device_get_sysctl_ctx(dev),
	    SYSCTL_CHILDREN(device_get_sysctl_tree(dev)), OID_AUTO,
	    "debug", CTLFLAG_RW, &sc->sc_debug, 0, "Debug flags");
#endif
}