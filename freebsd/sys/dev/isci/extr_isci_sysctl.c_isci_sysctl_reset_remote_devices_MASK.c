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
typedef  int uint32_t ;
struct ISCI_REMOTE_DEVICE {int dummy; } ;
struct ISCI_CONTROLLER {int /*<<< orphan*/  lock; struct ISCI_REMOTE_DEVICE** remote_device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ISCI_REMOTE_DEVICE*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct ISCI_CONTROLLER *controller,
    uint32_t remote_devices_to_be_reset)
{
	uint32_t i = 0;

	while (remote_devices_to_be_reset != 0) {
		if (remote_devices_to_be_reset & 0x1) {
			struct ISCI_REMOTE_DEVICE *remote_device =
				controller->remote_device[i];

			if (remote_device != NULL) {
				FUNC1(&controller->lock);
				FUNC0(remote_device, NULL);
				FUNC2(&controller->lock);
			}
		}
		remote_devices_to_be_reset >>= 1;
		i++;
	}
}