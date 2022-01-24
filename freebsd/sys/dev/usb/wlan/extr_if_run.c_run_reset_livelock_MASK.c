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
typedef  int uint32_t ;
struct run_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  RT2860_DEBUG ; 
 int RT2860_MAC_RX_EN ; 
 int RT2860_MAC_SRST ; 
 int /*<<< orphan*/  RT2860_MAC_SYS_CTRL ; 
 int RT2860_MAC_TX_EN ; 
 int /*<<< orphan*/  RUN_DEBUG_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct run_softc*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct run_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct run_softc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct run_softc*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct run_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC5(struct run_softc *sc)
{
	uint32_t tmp;

	FUNC1(sc, MA_OWNED);

	/*
	 * In IBSS or HostAP modes (when the hardware sends beacons), the MAC
	 * can run into a livelock and start sending CTS-to-self frames like
	 * crazy if protection is enabled.  Reset MAC/BBP for a while
	 */
	FUNC3(sc, RT2860_DEBUG, &tmp);
	FUNC0(sc, RUN_DEBUG_RESET, "debug reg %08x\n", tmp);
	if ((tmp & (1 << 29)) && (tmp & (1 << 7 | 1 << 5))) {
		FUNC0(sc, RUN_DEBUG_RESET,
		    "CTS-to-self livelock detected\n");
		FUNC4(sc, RT2860_MAC_SYS_CTRL, RT2860_MAC_SRST);
		FUNC2(sc, 1);
		FUNC4(sc, RT2860_MAC_SYS_CTRL,
		    RT2860_MAC_RX_EN | RT2860_MAC_TX_EN);
	}
}