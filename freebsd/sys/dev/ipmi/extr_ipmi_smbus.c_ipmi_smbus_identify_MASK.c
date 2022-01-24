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
struct ipmi_get_info {scalar_t__ iface_type; } ;
typedef  int /*<<< orphan*/  driver_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ SSIF_MODE ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC2 (struct ipmi_get_info*) ; 

__attribute__((used)) static void
FUNC3(driver_t *driver, device_t parent)
{
	struct ipmi_get_info info;

	if (FUNC2(&info) && info.iface_type == SSIF_MODE &&
	    FUNC1(parent, "ipmi", -1) == NULL)
		FUNC0(parent, 0, "ipmi", -1);
}