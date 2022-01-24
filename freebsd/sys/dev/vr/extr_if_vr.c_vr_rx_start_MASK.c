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
struct TYPE_2__ {int /*<<< orphan*/  vr_rx_cons; } ;
struct vr_softc {TYPE_1__ vr_cdata; } ;
typedef  int /*<<< orphan*/  bus_addr_t ;

/* Variables and functions */
 int FUNC0 (struct vr_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vr_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct vr_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VR_CR0 ; 
 int VR_CR0_RX_GO ; 
 int VR_CR0_RX_ON ; 
 int /*<<< orphan*/  VR_RXADDR ; 
 int /*<<< orphan*/  FUNC4 (struct vr_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct vr_softc *sc)
{
	bus_addr_t	addr;
	uint8_t		cmd;

	cmd = FUNC0(sc, VR_CR0);
	if ((cmd & VR_CR0_RX_ON) == 0) {
		addr = FUNC4(sc, sc->vr_cdata.vr_rx_cons);
		FUNC2(sc, VR_RXADDR, FUNC3(addr));
		cmd |= VR_CR0_RX_ON;
		FUNC1(sc, VR_CR0, cmd);
	}
	FUNC1(sc, VR_CR0, cmd | VR_CR0_RX_GO);
}