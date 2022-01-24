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
struct nlm_xlpnae_softc {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int /*<<< orphan*/  NAE_FREE_IN_FIFO_CFG ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(struct nlm_xlpnae_softc *sc)
{
	int intf;
	uint32_t value;
	int start, size;

	/* XXXJC: use max_ports instead of 20 ? */
	for (intf = 0; intf < 20; intf++) {
		FUNC1(sc->base, NAE_FREE_IN_FIFO_CFG,
		    (0x80000000 | intf));
		value = FUNC0(sc->base, NAE_FREE_IN_FIFO_CFG);
		size = 2 * ((value >> 20) & 0x3ff);
		start = 2 * ((value >> 8) & 0x1ff);
	}
}