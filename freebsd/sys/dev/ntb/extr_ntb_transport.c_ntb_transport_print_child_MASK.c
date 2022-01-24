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
struct ntb_transport_child {int qpcnt; int qpoff; int consumer; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ntb_transport_child* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char*,int) ; 

__attribute__((used)) static int
FUNC5(device_t dev, device_t child)
{
	struct ntb_transport_child *nc = FUNC3(child);
	int retval;

	retval = FUNC2(dev, child);
	if (nc->qpcnt > 0) {
		FUNC4(" queue %d", nc->qpoff);
		if (nc->qpcnt > 1)
			FUNC4("-%d", nc->qpoff + nc->qpcnt - 1);
	}
	retval += FUNC4(" at consumer %d", nc->consumer);
	retval += FUNC0(dev, child);
	retval += FUNC1(dev, child);

	return (retval);
}