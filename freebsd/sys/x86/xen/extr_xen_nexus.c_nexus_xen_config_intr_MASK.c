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
typedef  enum intr_trigger { ____Placeholder_intr_trigger } intr_trigger ;
typedef  enum intr_polarity { ____Placeholder_intr_polarity } intr_polarity ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int first_msi_irq ; 
 int FUNC0 (int,int,int) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int,int,int) ; 

__attribute__((used)) static int
FUNC4(device_t dev, int irq, enum intr_trigger trig,
    enum intr_polarity pol)
{
	int ret;

	/*
	 * ISA and PCI intline IRQs are not preregistered on Xen, so
	 * intercept calls to configure those and register them on the fly.
	 */
	if ((irq < first_msi_irq) && (FUNC1(irq) == NULL)) {
		ret = FUNC3(irq, trig, pol);
		if (ret != 0)
			return (ret);
		FUNC2(irq);
	}
	return (FUNC0(irq, trig, pol));
}