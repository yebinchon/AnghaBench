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
typedef  int uint8_t ;
struct usb_device {int /*<<< orphan*/  sr_sx; int /*<<< orphan*/  enum_sx; } ;

/* Variables and functions */
 int /*<<< orphan*/  Giant ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

uint8_t
FUNC3(struct usb_device *udev)
{
	if (FUNC2(&udev->enum_sx))
		return (0);

	FUNC1(&udev->enum_sx);
	FUNC1(&udev->sr_sx);
	/* 
	 * NEWBUS LOCK NOTE: We should check if any parent SX locks
	 * are locked before locking Giant. Else the lock can be
	 * locked multiple times.
	 */
	FUNC0(&Giant);
	return (1);
}