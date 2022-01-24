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
typedef  int /*<<< orphan*/  bus_space_tag_t ;
typedef  int /*<<< orphan*/  bus_space_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  CONTROL ; 
 scalar_t__ FUNC0 (scalar_t__,char*,void**) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int USB_EN ; 
 int UTMI_PHY_EN ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(device_t dev, bus_space_tag_t iot, bus_space_handle_t ioh)
{
	int tmp;
	phandle_t node;
	char *phy_type;

	phy_type = NULL;
	tmp = FUNC2(iot, ioh, CONTROL) | USB_EN;

	node = FUNC4(dev);
	if ((node != 0) &&
	    (FUNC0(node, "phy_type", (void **)&phy_type) > 0)) {
		if (FUNC6(phy_type, "utmi", FUNC5("utmi")) == 0)
			tmp |= UTMI_PHY_EN;
		FUNC1(phy_type);
	}
	FUNC3(iot, ioh, CONTROL, tmp);
}