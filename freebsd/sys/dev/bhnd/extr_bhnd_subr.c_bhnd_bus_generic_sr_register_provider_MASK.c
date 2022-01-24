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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct bhnd_service_registry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC3(device_t dev, device_t child,
    device_t provider, bhnd_service_t service)
{
	struct bhnd_service_registry *bsr;

	bsr = FUNC0(dev, child);

	FUNC1(bsr != NULL, ("NULL service registry"));

	return (FUNC2(bsr, provider, service, 0));
}