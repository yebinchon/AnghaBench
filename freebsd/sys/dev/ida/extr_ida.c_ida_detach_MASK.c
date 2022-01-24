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
struct ida_softc {int /*<<< orphan*/  ida_dev_t; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ida_softc*) ; 

int
FUNC5(device_t dev)
{
	struct ida_softc *ida;
	int error;

	ida = (struct ida_softc *)FUNC3(dev);

	error = FUNC0(dev);
	if (error)
		return (error);
	error = FUNC2(dev);
	if (error)
		return (error);

	/*
	 * XXX
	 * before detaching, we must make sure that the system is
	 * quiescent; nothing mounted, no pending activity.
	 */

	/*
	 * XXX
	 * now, how are we supposed to maintain a list of our drives?
	 * iterate over our "child devices"?
	 */

	FUNC1(ida->ida_dev_t);
	FUNC4(ida);
	return (error);
}