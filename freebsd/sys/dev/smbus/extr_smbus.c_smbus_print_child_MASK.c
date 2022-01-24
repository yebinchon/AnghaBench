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
struct smbus_ivar {scalar_t__ addr; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct smbus_ivar* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*,scalar_t__) ; 

__attribute__((used)) static int
FUNC4(device_t parent, device_t child)
{
	struct smbus_ivar *devi;
	int retval;

	devi = FUNC2(child);
	retval = FUNC1(parent, child);
	if (devi->addr != 0)
		retval += FUNC3(" at addr 0x%x", devi->addr);
	retval += FUNC0(parent, child);

	return (retval);
}