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
struct ipw_softc {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct ipw_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ipw_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  IPW_CSR_INTR ; 
 int /*<<< orphan*/  IPW_CSR_INTR_MASK ; 
 int IPW_INTR_FATAL_ERROR ; 
 int IPW_INTR_FW_INIT_DONE ; 
 int IPW_INTR_MASK ; 
 int IPW_INTR_PARITY_ERROR ; 
 int IPW_INTR_RX_TRANSFER ; 
 int IPW_INTR_TX_TRANSFER ; 
 int /*<<< orphan*/  FUNC2 (struct ipw_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ipw_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct ipw_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct ipw_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct ipw_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct ipw_softc*) ; 

__attribute__((used)) static void
FUNC8(void *arg)
{
	struct ipw_softc *sc = arg;
	uint32_t r;

	FUNC2(sc);

	r = FUNC0(sc, IPW_CSR_INTR);
	if (r == 0 || r == 0xffffffff)
		goto done;

	/* disable interrupts */
	FUNC1(sc, IPW_CSR_INTR_MASK, 0);

	/* acknowledge all interrupts */
	FUNC1(sc, IPW_CSR_INTR, r);

	if (r & (IPW_INTR_FATAL_ERROR | IPW_INTR_PARITY_ERROR)) {
		FUNC4(sc);
		goto done;
	}

	if (r & IPW_INTR_FW_INIT_DONE)
		FUNC7(sc);

	if (r & IPW_INTR_RX_TRANSFER)
		FUNC5(sc);

	if (r & IPW_INTR_TX_TRANSFER)
		FUNC6(sc);

	/* re-enable interrupts */
	FUNC1(sc, IPW_CSR_INTR_MASK, IPW_INTR_MASK);
done:
	FUNC3(sc);
}