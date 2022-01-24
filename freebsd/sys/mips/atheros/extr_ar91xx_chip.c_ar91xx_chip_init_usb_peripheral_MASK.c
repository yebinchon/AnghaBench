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

/* Variables and functions */
 int /*<<< orphan*/  AR91XX_RST_RESET_MODULE_AMBA2WMAC ; 
 int /*<<< orphan*/  AR91XX_RST_RESET_MODULE_USBSUS_OVERRIDE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  RST_RESET_USB_HOST ; 
 int /*<<< orphan*/  RST_RESET_USB_PHY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(void)
{

	FUNC2(AR91XX_RST_RESET_MODULE_USBSUS_OVERRIDE);
	FUNC0(100);

	FUNC1(RST_RESET_USB_HOST);
	FUNC0(100);

	FUNC1(RST_RESET_USB_PHY);
	FUNC0(100);

	/* Wireless */
	FUNC2(AR91XX_RST_RESET_MODULE_AMBA2WMAC);
	FUNC0(1000);

	FUNC1(AR91XX_RST_RESET_MODULE_AMBA2WMAC);
	FUNC0(1000);
}