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
struct e82545_softc {int esc_ICR; int esc_IMS; scalar_t__ esc_irq_asserted; int /*<<< orphan*/  esc_pi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct e82545_softc *sc, uint32_t bits)
{

	FUNC0("icr deassert: 0x%x\r\n", bits);
	sc->esc_ICR &= ~bits;

	/*
	 * If there are no longer any interrupt sources and there
	 * was an asserted interrupt, clear it
	 */
	if (sc->esc_irq_asserted && !(sc->esc_ICR & sc->esc_IMS)) {
		FUNC0("icr deassert: lintr deassert %x\r\n", bits);
		FUNC1(sc->esc_pi);
		sc->esc_irq_asserted = 0;
	}
}