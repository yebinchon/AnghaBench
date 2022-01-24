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
struct ib_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC1 (struct ib_device*,int) ; 
 scalar_t__ FUNC2 (struct ib_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ib_device*,int) ; 
 int FUNC4 (struct ib_device*) ; 
 int FUNC5 (struct ib_device*) ; 

__attribute__((used)) static void FUNC6(struct ib_device *device, void *client_data)
{
	int i;

	for (i = FUNC5(device); i <= FUNC4(device); i++) {
		if (!FUNC3(device, i))
			continue;

		if (FUNC1(device, i))
			FUNC0(&device->dev,
				"Couldn't close port %d for agents\n", i);
		if (FUNC2(device, i))
			FUNC0(&device->dev, "Couldn't close port %d\n", i);
	}
}