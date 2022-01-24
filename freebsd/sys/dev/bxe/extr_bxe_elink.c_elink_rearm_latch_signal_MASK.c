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
typedef  int uint8_t ;
typedef  int uint32_t ;
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,char*,int) ; 
 int /*<<< orphan*/  ELINK_NIG_STATUS_EMAC0_MI_INT ; 
 scalar_t__ NIG_REG_LATCH_STATUS_0 ; 
 scalar_t__ NIG_REG_STATUS_INTERRUPT_PORT0 ; 
 int FUNC1 (struct bxe_softc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_softc*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bxe_softc*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bxe_softc*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct bxe_softc *sc, uint8_t port,
				     uint8_t exp_mi_int)
{
	uint32_t latch_status = 0;

	/* Disable the MI INT ( external phy int ) by writing 1 to the
	 * status register. Link down indication is high-active-signal,
	 * so in this case we need to write the status to clear the XOR
	 */
	/* Read Latched signals */
	latch_status = FUNC1(sc,
				    NIG_REG_LATCH_STATUS_0 + port*8);
	FUNC0(sc, "latch_status = 0x%x\n", latch_status);
	/* Handle only those with latched-signal=up.*/
	if (exp_mi_int)
		FUNC4(sc,
			      NIG_REG_STATUS_INTERRUPT_PORT0
			      + port*4,
			      ELINK_NIG_STATUS_EMAC0_MI_INT);
	else
		FUNC3(sc,
			       NIG_REG_STATUS_INTERRUPT_PORT0
			       + port*4,
			       ELINK_NIG_STATUS_EMAC0_MI_INT);

	if (latch_status & 1) {

		/* For all latched-signal=up : Re-Arm Latch signals */
		FUNC2(sc, NIG_REG_LATCH_STATUS_0 + port*8,
		       (latch_status & 0xfffe) | (latch_status & 1));
	}
	/* For all latched-signal=up,Write original_signal to status */
}