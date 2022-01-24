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
struct spibus_ivar {int cs; int mode; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct spibus_ivar* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*,int) ; 

__attribute__((used)) static int
FUNC4(device_t dev, device_t child)
{
	struct spibus_ivar *devi = FUNC0(child);
	int retval = 0;

	retval += FUNC2(dev, child);
	retval += FUNC3(" at cs %d", devi->cs);
	retval += FUNC3(" mode %d", devi->mode);
	retval += FUNC1(dev, child);

	return (retval);
}