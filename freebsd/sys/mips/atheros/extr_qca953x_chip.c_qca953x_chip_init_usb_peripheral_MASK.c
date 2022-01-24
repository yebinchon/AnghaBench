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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  QCA953X_RESET_REG_BOOTSTRAP ; 
 int /*<<< orphan*/  QCA953X_RESET_USBSUS_OVERRIDE ; 
 int /*<<< orphan*/  QCA953X_RESET_USB_HOST ; 
 int /*<<< orphan*/  QCA953X_RESET_USB_PHY ; 
 int /*<<< orphan*/  QCA953X_RESET_USB_PHY_ANALOG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(void)
{
	uint32_t bootstrap;

	bootstrap = FUNC0(QCA953X_RESET_REG_BOOTSTRAP);

	FUNC3(QCA953X_RESET_USBSUS_OVERRIDE);
	FUNC1(1000);

	FUNC2(QCA953X_RESET_USB_PHY);
	FUNC1(1000);

	FUNC2(QCA953X_RESET_USB_PHY_ANALOG);
	FUNC1(1000);

	FUNC2(QCA953X_RESET_USB_HOST);
	FUNC1(1000);
}