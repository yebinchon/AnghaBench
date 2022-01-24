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
typedef  scalar_t__ phandle_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__,char const*) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

__attribute__((used)) static int
FUNC5(device_t pinctrl, phandle_t parent,
    const char *pinprop)
{
	phandle_t node;

	/*
	 * Recursively descend from parent, looking for nodes that have the
	 * given property, and associate the pinctrl device_t with each one.
	 */
	for (node = FUNC0(parent); node != 0; node = FUNC3(node)) {
		FUNC5(pinctrl, node, pinprop);
		if (pinprop == NULL || FUNC2(node, pinprop)) {
			FUNC1(FUNC4(node),
			    pinctrl);
		}
	}
	return (0);
}