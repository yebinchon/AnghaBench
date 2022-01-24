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
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	int rv = 0;
	FUNC2(dev);

	if ((rv = FUNC0(dev)) != 0) {
		FUNC4(dev, "cmx_alloc_resources() failed!\n");
		FUNC3(dev);
		return rv;
	}

	if ((rv = FUNC1(dev)) != 0) {
		FUNC4(dev, "cmx_attach() failed!\n");
		FUNC3(dev);
		return rv;
	}

	FUNC4(dev, "attached\n");
	return 0;
}