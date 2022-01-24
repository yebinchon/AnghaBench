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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

int
FUNC5(device_t dev)
{
	int busno, domain, error;

	error = FUNC2(dev);
	if (error)
		return (error);

	/*
	 * Since there can be multiple independently numbered PCI
	 * buses on systems with multiple PCI domains, we can't use
	 * the unit number to decide which bus we are probing. We ask
	 * the parent pcib what our domain and bus numbers are.
	 */
	domain = FUNC4(dev);
	busno = FUNC3(dev);
	FUNC1(dev, domain, busno);
	return (FUNC0(dev));
}