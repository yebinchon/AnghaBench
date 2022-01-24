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
struct resource {int dummy; } ;
typedef  int /*<<< orphan*/  register_t ;
typedef  int /*<<< orphan*/  driver_intr_t ;
typedef  int /*<<< orphan*/  driver_filter_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int NUM_MIPS_IRQS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,int,int,void**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct resource*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,int,void**) ; 
 int FUNC5 (struct resource*) ; 

__attribute__((used)) static int
FUNC6(device_t dev, device_t child, struct resource *res, int flags,
    driver_filter_t *filt, driver_intr_t *intr, void *arg, void **cookiep)
{
#ifdef INTRNG
	return (intr_setup_irq(child, res, filt, intr, arg, flags, cookiep));
#else
	int irq;
	register_t s;

	s = FUNC2();
	irq = FUNC5(res);
	if (irq >= NUM_MIPS_IRQS) {
		FUNC3(s);
		return (0);
	}

	FUNC0(FUNC1(child), filt, intr, arg,
	    irq, flags, cookiep);
	FUNC3(s);

	return (0);
#endif
}