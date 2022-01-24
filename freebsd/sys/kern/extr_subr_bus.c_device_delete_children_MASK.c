#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* device_t ;
struct TYPE_7__ {int /*<<< orphan*/  children; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_1__*,TYPE_1__*) ; 

int
FUNC4(device_t dev)
{
	device_t child;
	int error;

	FUNC1(("Deleting all children of %s", FUNC0(dev)));

	error = 0;

	while ((child = FUNC2(&dev->children)) != NULL) {
		error = FUNC3(dev, child);
		if (error) {
			FUNC1(("Failed deleting %s", FUNC0(child)));
			break;
		}
	}
	return (error);
}