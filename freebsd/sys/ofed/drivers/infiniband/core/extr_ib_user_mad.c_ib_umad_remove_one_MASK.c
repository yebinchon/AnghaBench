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
struct ib_umad_device {int /*<<< orphan*/  kobj; int /*<<< orphan*/ * port; } ;
struct ib_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct ib_device*,int) ; 
 int FUNC3 (struct ib_device*) ; 
 int FUNC4 (struct ib_device*) ; 

__attribute__((used)) static void FUNC5(struct ib_device *device, void *client_data)
{
	struct ib_umad_device *umad_dev = client_data;
	int i;

	if (!umad_dev)
		return;

	for (i = 0; i <= FUNC3(device) - FUNC4(device); ++i) {
		if (FUNC2(device, i + FUNC4(device)))
			FUNC0(&umad_dev->port[i]);
	}

	FUNC1(&umad_dev->kobj);
}