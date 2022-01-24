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
typedef  scalar_t__ u_int ;
struct xive_irq {int flags; scalar_t__ eoi_page; scalar_t__ trig_page; } ;
struct xive_cpu {struct xive_irq ipi_data; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct xive_cpu* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ MAX_XIVE_IRQS ; 
 int /*<<< orphan*/  OPAL_INT_EOI ; 
 int OPAL_XIVE_IRQ_EOI_VIA_FW ; 
 int OPAL_XIVE_IRQ_LSI ; 
 int OPAL_XIVE_IRQ_STORE_EOI ; 
 scalar_t__ XIVE_IRQ_LOAD_EOI ; 
 scalar_t__ XIVE_IRQ_PQ_00 ; 
 scalar_t__ XIVE_IRQ_STORE_EOI ; 
 int XIVE_IRQ_VAL_Q ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  xive_cpu_data ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(device_t dev, u_int irq, void *priv)
{
	struct xive_irq *rirq;
	struct xive_cpu *cpud;
	uint8_t eoi_val;

	if (irq == MAX_XIVE_IRQS) {
		cpud = FUNC0(xive_cpu_data);
		rirq = &cpud->ipi_data;
	} else
		rirq = priv;

	if (rirq->flags & OPAL_XIVE_IRQ_EOI_VIA_FW)
		FUNC1(OPAL_INT_EOI, irq);
	else if (rirq->flags & OPAL_XIVE_IRQ_STORE_EOI)
		FUNC3(rirq->eoi_page + XIVE_IRQ_STORE_EOI, 0);
	else if (rirq->flags & OPAL_XIVE_IRQ_LSI)
		FUNC2(rirq->eoi_page + XIVE_IRQ_LOAD_EOI);
	else {
		eoi_val = FUNC2(rirq->eoi_page + XIVE_IRQ_PQ_00);
		if ((eoi_val & XIVE_IRQ_VAL_Q) && rirq->trig_page != 0)
			FUNC3(rirq->trig_page, 0);
	}
}