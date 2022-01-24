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
 int AR724X_RESET_MODULE_USB_OHCI_DLL ; 
 int /*<<< orphan*/  AR724X_RESET_REG_RESET_MODULE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(uint32_t mask)
{
	uint32_t mask_inv, reg;

	mask_inv = mask & AR724X_RESET_MODULE_USB_OHCI_DLL;
	reg = FUNC0(AR724X_RESET_REG_RESET_MODULE);
	reg |= mask;
	reg &= ~mask_inv;
	FUNC1(AR724X_RESET_REG_RESET_MODULE, reg);
}