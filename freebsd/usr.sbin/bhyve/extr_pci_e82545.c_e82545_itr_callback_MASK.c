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
struct e82545_softc {int esc_ICR; int esc_IMS; int esc_irq_asserted; int /*<<< orphan*/  esc_mtx; int /*<<< orphan*/ * esc_mevpitr; int /*<<< orphan*/  esc_pi; } ;
typedef  enum ev_type { ____Placeholder_ev_type } ev_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(int fd, enum ev_type type, void *param)
{
	uint32_t new;
	struct e82545_softc *sc = param;

	FUNC3(&sc->esc_mtx);
	new = sc->esc_ICR & sc->esc_IMS;
	if (new && !sc->esc_irq_asserted) {
		FUNC0("itr callback: lintr assert %x\r\n", new);
		sc->esc_irq_asserted = 1;
		FUNC2(sc->esc_pi);
	} else {
		FUNC1(sc->esc_mevpitr);
		sc->esc_mevpitr = NULL;
	}
	FUNC4(&sc->esc_mtx);
}