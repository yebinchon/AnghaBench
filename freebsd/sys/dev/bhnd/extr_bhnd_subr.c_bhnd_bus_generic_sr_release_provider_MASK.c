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
struct bhnd_service_registry {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  bhnd_service_t ;

/* Variables and functions */
 struct bhnd_service_registry* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct bhnd_service_registry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void
FUNC5(device_t dev, device_t child,
    device_t provider, bhnd_service_t service)
{
	struct bhnd_service_registry	*bsr;

	bsr = FUNC0(dev, child);
	FUNC2(bsr != NULL, ("NULL service registry"));

	/* Release the provider reference; if the refcount hits zero on an
	 * inherited reference, true will be returned, and we need to drop
	 * our own bus reference to the provider */
	if (!FUNC3(bsr, provider, service))
		return;

	/* Drop our reference to the borrowed provider */
	FUNC1(FUNC4(dev), dev, provider,
	    service);
}