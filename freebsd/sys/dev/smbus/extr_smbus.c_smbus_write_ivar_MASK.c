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
struct smbus_ivar {uintptr_t addr; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
#define  SMBUS_IVAR_ADDR 128 
 struct smbus_ivar* FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1(device_t parent, device_t child, int which, uintptr_t value)
{
	struct smbus_ivar *devi;

	devi = FUNC0(child);
	switch (which) {
	case SMBUS_IVAR_ADDR:
		/* Allow to set but no change the slave address. */
		if (devi->addr != 0)
			return (EINVAL);
		devi->addr = value;
		break;
	default:
		return (ENOENT);
	}
	return (0);
}