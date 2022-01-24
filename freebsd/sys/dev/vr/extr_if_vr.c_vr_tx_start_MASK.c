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
typedef  int uint8_t ;
struct TYPE_2__ {scalar_t__ vr_tx_cnt; int /*<<< orphan*/  vr_tx_cons; } ;
struct vr_softc {int vr_watchdog_timer; TYPE_1__ vr_cdata; } ;
typedef  int /*<<< orphan*/  bus_addr_t ;

/* Variables and functions */
 int FUNC0 (struct vr_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vr_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct vr_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VR_CR0 ; 
 int /*<<< orphan*/  VR_CR0_TX_GO ; 
 int VR_CR0_TX_ON ; 
 int /*<<< orphan*/  FUNC4 (struct vr_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VR_TXADDR ; 
 int /*<<< orphan*/  FUNC5 (struct vr_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct vr_softc *sc)
{
	bus_addr_t	addr;
	uint8_t		cmd;

	cmd = FUNC0(sc, VR_CR0);
	if ((cmd & VR_CR0_TX_ON) == 0) {
		addr = FUNC5(sc, sc->vr_cdata.vr_tx_cons);
		FUNC2(sc, VR_TXADDR, FUNC3(addr));
		cmd |= VR_CR0_TX_ON;
		FUNC1(sc, VR_CR0, cmd);
	}
	if (sc->vr_cdata.vr_tx_cnt != 0) {
		sc->vr_watchdog_timer = 5;
		FUNC4(sc, VR_CR0, VR_CR0_TX_GO);
	}
}