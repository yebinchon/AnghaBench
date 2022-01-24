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
struct bcm_platform {struct bhnd_service_registry services; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct bcm_platform* FUNC0 () ; 

__attribute__((used)) static struct bhnd_service_registry *
FUNC1(device_t dev, device_t child)
{
	struct bcm_platform *bp = FUNC0();
	return (&bp->services);
}