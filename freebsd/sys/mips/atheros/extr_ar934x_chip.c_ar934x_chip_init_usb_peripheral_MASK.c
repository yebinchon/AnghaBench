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
typedef  int uint32_t ;

/* Variables and functions */
 int AR934X_BOOTSTRAP_USB_MODE_DEVICE ; 
 int /*<<< orphan*/  AR934X_RESET_REG_BOOTSTRAP ; 
 int /*<<< orphan*/  AR934X_RESET_USBSUS_OVERRIDE ; 
 int /*<<< orphan*/  AR934X_RESET_USB_HOST ; 
 int /*<<< orphan*/  AR934X_RESET_USB_PHY ; 
 int /*<<< orphan*/  AR934X_RESET_USB_PHY_ANALOG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(void)
{
	uint32_t reg;

	reg = FUNC0(AR934X_RESET_REG_BOOTSTRAP);
	if (reg & AR934X_BOOTSTRAP_USB_MODE_DEVICE)
		return;

	FUNC3(AR934X_RESET_USBSUS_OVERRIDE);
	FUNC1(100);

	FUNC2(AR934X_RESET_USB_PHY);
	FUNC1(100);

	FUNC2(AR934X_RESET_USB_PHY_ANALOG);
	FUNC1(100);

	FUNC2(AR934X_RESET_USB_HOST);
	FUNC1(100);
}