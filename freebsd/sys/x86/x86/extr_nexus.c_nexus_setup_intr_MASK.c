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
typedef  int /*<<< orphan*/  driver_filter_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int INTR_EXCL ; 
 int RF_SHAREABLE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void (*) (void*),void*,int,void**,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (struct resource*) ; 
 int FUNC5 (struct resource*) ; 
 int /*<<< orphan*/  FUNC6 (struct resource*) ; 
 int /*<<< orphan*/  FUNC7 (struct resource*,void*) ; 

__attribute__((used)) static int
FUNC8(device_t bus, device_t child, struct resource *irq,
		 int flags, driver_filter_t filter, void (*ihand)(void *),
		 void *arg, void **cookiep)
{
	int		error, domain;

	/* somebody tried to setup an irq that failed to allocate! */
	if (irq == NULL)
		FUNC3("nexus_setup_intr: NULL irq resource!");

	*cookiep = NULL;
	if ((FUNC5(irq) & RF_SHAREABLE) == 0)
		flags |= INTR_EXCL;

	/*
	 * We depend here on rman_activate_resource() being idempotent.
	 */
	error = FUNC4(irq);
	if (error)
		return (error);
	if (FUNC0(child, &domain) != 0)
		domain = 0;

	error = FUNC2(FUNC1(child),
	    FUNC6(irq), filter, ihand, arg, flags, cookiep, domain);
	if (error == 0)
		FUNC7(irq, *cookiep);

	return (error);
}