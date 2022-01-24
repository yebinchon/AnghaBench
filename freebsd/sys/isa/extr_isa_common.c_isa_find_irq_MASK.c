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
typedef  scalar_t__ uint32_t ;
struct resource {int dummy; } ;
struct isa_config {int ic_nirq; scalar_t__* ic_irqmask; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ISA_NIRQ ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 struct resource* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct resource*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC4 (scalar_t__) ; 
 int FUNC5 (scalar_t__,int) ; 

__attribute__((used)) static int
FUNC6(device_t child, struct isa_config *config,
    struct isa_config *result)
{
	int success, i;
	struct resource *res[ISA_NIRQ];

	/*
	 * First clear out any existing resource definitions.
	 */
	for (i = 0; i < ISA_NIRQ; i++) {
		FUNC1(child, SYS_RES_IRQ, i);
		res[i] = NULL;
	}

	success = 1;
	result->ic_nirq = config->ic_nirq;
	for (i = 0; i < config->ic_nirq; i++) {
		uint32_t mask = config->ic_irqmask[i];
		int irq;

		/* the PnP device may have a null resource as filler */
		if (mask == 0) {
			result->ic_irqmask[i] = 0;
			continue;
		}

		for (irq = FUNC4(mask);
		     irq != -1;
		     irq = FUNC5(mask, irq)) {
			FUNC3(child, SYS_RES_IRQ, i,
					 irq, 1);
			res[i] = FUNC0(child,
							SYS_RES_IRQ, &i,
							0 /* !RF_ACTIVE */ );
			if (res[i]) {
				result->ic_irqmask[i] = (1 << irq);
				break;
			}
		}

		/*
		 * If we didn't find a place for irq range i, then 
		 * give up now.
		 */
		if (!res[i]) {
			success = 0;
			break;
		}
	}

	for (i = 0; i < ISA_NIRQ; i++) {
		if (res[i])
			FUNC2(child, SYS_RES_IRQ,
					     i, res[i]);
	}

	return (success);
}