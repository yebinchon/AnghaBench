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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int u_int ;
struct openpic_cpcht_softc {int /*<<< orphan*/  sc_ht_mtx; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {scalar_t__ ht_base; int ht_source; } ;

/* Variables and functions */
 int /*<<< orphan*/  HTAPIC_MASK ; 
 scalar_t__ PCIR_HT_COMMAND ; 
 TYPE_1__* cpcht_irqmap ; 
 struct openpic_cpcht_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,void*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int) ; 

__attribute__((used)) static void
FUNC8(device_t dev, u_int irq, void *priv)
{
	struct openpic_cpcht_softc *sc;
	uint32_t ht_irq;

	FUNC5(dev, irq, priv);

	sc = FUNC0(dev);

	if (cpcht_irqmap != NULL && irq < 128 &&
	    cpcht_irqmap[irq].ht_base > 0) {
		FUNC2(&sc->sc_ht_mtx);

		/* Program the data port */
		FUNC7(cpcht_irqmap[irq].ht_base + PCIR_HT_COMMAND,
		    0x10 + (cpcht_irqmap[irq].ht_source << 1));

		/* Unmask the interrupt */
		ht_irq = FUNC1(cpcht_irqmap[irq].ht_base + 4);
		ht_irq &= ~HTAPIC_MASK;
		FUNC6(cpcht_irqmap[irq].ht_base + 4, ht_irq);

		FUNC3(&sc->sc_ht_mtx);
	}

	FUNC4(dev, irq, priv);
}