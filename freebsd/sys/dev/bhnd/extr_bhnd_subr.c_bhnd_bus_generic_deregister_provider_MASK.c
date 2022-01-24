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
typedef  int /*<<< orphan*/ * device_t ;
typedef  int /*<<< orphan*/  bhnd_service_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

int
FUNC3(device_t dev, device_t child,
    device_t provider, bhnd_service_t service)
{
	device_t parent = FUNC1(dev);

	if (parent != NULL) {
		return (FUNC0(parent, child,
		    provider, service));
	}

	FUNC2("missing BHND_BUS_DEREGISTER_PROVIDER()");
}