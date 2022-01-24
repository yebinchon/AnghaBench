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
typedef  int /*<<< orphan*/  driver_intr_t ;
typedef  int /*<<< orphan*/  driver_filter_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int INTR_EXCL ; 
 int RF_SHAREABLE ; 
 int FUNC0 (int /*<<< orphan*/ ,struct resource*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,int,void**) ; 
 int FUNC1 (struct resource*) ; 
 int FUNC2 (struct resource*) ; 

__attribute__((used)) static int
FUNC3(device_t dev, device_t child, struct resource *res, int flags,
    driver_filter_t *filt, driver_intr_t *intr, void *arg, void **cookiep)
{
	int error;

	if ((FUNC2(res) & RF_SHAREABLE) == 0)
		flags |= INTR_EXCL;

	/* We depend here on rman_activate_resource() being idempotent. */
	error = FUNC1(res);
	if (error)
		return (error);

	error = FUNC0(child, res, filt, intr, arg, flags, cookiep);

	return (error);
}