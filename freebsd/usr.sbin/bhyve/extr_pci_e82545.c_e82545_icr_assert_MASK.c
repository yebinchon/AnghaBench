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
struct e82545_softc {int esc_ICR; int esc_IMS; int esc_irq_asserted; int esc_ITR; int /*<<< orphan*/ * esc_mevpitr; int /*<<< orphan*/  esc_pi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int /*<<< orphan*/  EVF_TIMER ; 
 int /*<<< orphan*/  e82545_itr_callback ; 
 int /*<<< orphan*/ * FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct e82545_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct e82545_softc *sc, uint32_t bits)
{
	uint32_t new;

	FUNC0("icr assert: 0x%x\r\n", bits);
	
	/*
	 * An interrupt is only generated if bits are set that
	 * aren't already in the ICR, these bits are unmasked,
	 * and there isn't an interrupt already pending.
	 */
	new = bits & ~sc->esc_ICR & sc->esc_IMS;
	sc->esc_ICR |= bits;

	if (new == 0) {
		FUNC0("icr assert: masked %x, ims %x\r\n", new, sc->esc_IMS);
	} else if (sc->esc_mevpitr != NULL) {
		FUNC0("icr assert: throttled %x, ims %x\r\n", new, sc->esc_IMS);
	} else if (!sc->esc_irq_asserted) {
		FUNC0("icr assert: lintr assert %x\r\n", new);
		sc->esc_irq_asserted = 1;
		FUNC2(sc->esc_pi);
		if (sc->esc_ITR != 0) {
			sc->esc_mevpitr = FUNC1(
			    (sc->esc_ITR + 3905) / 3906,  /* 256ns -> 1ms */
			    EVF_TIMER, e82545_itr_callback, sc);
		}
	}
}