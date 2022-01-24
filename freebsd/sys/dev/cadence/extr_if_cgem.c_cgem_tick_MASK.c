#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mii_data {int dummy; } ;
struct TYPE_2__ {scalar_t__ rx_frames; } ;
struct cgem_softc {scalar_t__ rx_frames_prev; int net_ctl_shadow; int /*<<< orphan*/  tick_ch; TYPE_1__ stats; scalar_t__ rxhangwar; int /*<<< orphan*/ * miibus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cgem_softc*) ; 
 int /*<<< orphan*/  CGEM_NET_CTRL ; 
 int CGEM_NET_CTRL_RX_EN ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct cgem_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (void*),struct cgem_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct cgem_softc*) ; 
 struct mii_data* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC6 (struct mii_data*) ; 

__attribute__((used)) static void
FUNC7(void *arg)
{
	struct cgem_softc *sc = (struct cgem_softc *)arg;
	struct mii_data *mii;

	FUNC0(sc);

	/* Poll the phy. */
	if (sc->miibus != NULL) {
		mii = FUNC5(sc->miibus);
		FUNC6(mii);
	}

	/* Poll statistics registers. */
	FUNC4(sc);

	/* Check for receiver hang. */
	if (sc->rxhangwar && sc->rx_frames_prev == sc->stats.rx_frames) {
		/*
		 * Reset receiver logic by toggling RX_EN bit.  1usec
		 * delay is necessary especially when operating at 100mbps
		 * and 10mbps speeds.
		 */
		FUNC2(sc, CGEM_NET_CTRL, sc->net_ctl_shadow &
		    ~CGEM_NET_CTRL_RX_EN);
		FUNC1(1);
		FUNC2(sc, CGEM_NET_CTRL, sc->net_ctl_shadow);
	}
	sc->rx_frames_prev = sc->stats.rx_frames;

	/* Next callout in one second. */
	FUNC3(&sc->tick_ch, hz, cgem_tick, sc);
}