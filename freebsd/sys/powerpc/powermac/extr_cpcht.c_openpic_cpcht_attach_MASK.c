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
struct openpic_cpcht_softc {int /*<<< orphan*/  sc_ht_mtx; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  scalar_t__ device_t ;

/* Variables and functions */
 int /*<<< orphan*/  INTR_POLARITY_LOW ; 
 int /*<<< orphan*/  INTR_TRIGGER_EDGE ; 
 int /*<<< orphan*/  INTR_TRIGGER_LEVEL ; 
 int /*<<< orphan*/  MTX_SPIN ; 
 int /*<<< orphan*/  cpcht_msipic ; 
 struct openpic_cpcht_softc* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ root_pic ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	struct openpic_cpcht_softc *sc;
	phandle_t node;
	int err, irq;

	node = FUNC2(dev);
	err = FUNC3(dev, node);
	if (err != 0)
		return (err);

	/*
	 * The HT APIC stuff is not thread-safe, so we need a mutex to
	 * protect it.
	 */
	sc = FUNC0(dev);
	FUNC1(&sc->sc_ht_mtx, "htpic", NULL, MTX_SPIN);

	/*
	 * Interrupts 0-3 are internally sourced and are level triggered
	 * active low. Interrupts 4-123 are connected to a pulse generator
	 * and should be programmed as edge triggered low-to-high.
	 * 
	 * IBM CPC945 Manual, Section 9.3.
	 */

	for (irq = 0; irq < 4; irq++)
		FUNC4(dev, irq, INTR_TRIGGER_LEVEL, INTR_POLARITY_LOW);
	for (irq = 4; irq < 124; irq++)
		FUNC4(dev, irq, INTR_TRIGGER_EDGE, INTR_POLARITY_LOW);

	/*
	 * Use this PIC for MSI only if it is the root PIC. This may not
	 * be necessary, but Linux does it, and I cannot find any U3 machines
	 * with MSI devices to test.
	 */
	if (dev == root_pic)
		cpcht_msipic = node;

	return (0);
}