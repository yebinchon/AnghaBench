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
typedef  scalar_t__ u_int ;
struct xive_irq {scalar_t__ lirq; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  scalar_t__ cell_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ MAX_XIVE_IRQS ; 
 scalar_t__ OPAL_BUSY ; 
 int /*<<< orphan*/  OPAL_XIVE_SET_IRQ_CONFIG ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XIVE_PRIORITY ; 
 int /*<<< orphan*/  hwref ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__,scalar_t__,scalar_t__) ; 
 void* FUNC4 (scalar_t__) ; 
 int xive_ipi_vector ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,void*) ; 

__attribute__((used)) static void
FUNC6(device_t dev, u_int irq, u_int vector, void **priv)
{
	struct xive_irq *irqd;
	cell_t status, cpu;

	if (irq == MAX_XIVE_IRQS) {
		if (xive_ipi_vector == -1)
			xive_ipi_vector = vector;
		return;
	}
	if (*priv == NULL)
		*priv = FUNC4(irq);

	irqd = *priv;

	/* Bind to this CPU to start */
	cpu = FUNC1(hwref);
	irqd->lirq = vector;

	for (;;) {
		status = FUNC2(OPAL_XIVE_SET_IRQ_CONFIG, irq, cpu,
		    XIVE_PRIORITY, vector);
		if (status != OPAL_BUSY)
			break;
		FUNC0(10);
	}

	if (status != 0)
		FUNC3("OPAL_SET_XIVE IRQ %d -> cpu %d failed: %d", irq,
		    cpu, status);

	FUNC5(dev, irq, *priv);
}