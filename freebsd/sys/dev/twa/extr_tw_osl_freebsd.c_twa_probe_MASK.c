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
typedef  int TW_UINT8 ;
typedef  int /*<<< orphan*/  TW_INT32 ;

/* Variables and functions */
 int /*<<< orphan*/  ENXIO ; 
 int /*<<< orphan*/  TW_OSLI_DEVICE_NAME ; 
 char* TW_OSL_DRIVER_VERSION_STRING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 

__attribute__((used)) static TW_INT32
FUNC6(device_t dev)
{
	static TW_UINT8	first_ctlr = 1;

	FUNC5(3, "entered");

	if (FUNC4(FUNC2(dev), FUNC1(dev))) {
		FUNC0(dev, TW_OSLI_DEVICE_NAME);
		/* Print the driver version only once. */
		if (first_ctlr) {
			FUNC3("3ware device driver for 9000 series storage "
				"controllers, version: %s\n",
				TW_OSL_DRIVER_VERSION_STRING);
			first_ctlr = 0;
		}
		return(0);
	}
	return(ENXIO);
}