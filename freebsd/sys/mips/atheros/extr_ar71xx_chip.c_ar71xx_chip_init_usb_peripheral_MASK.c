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
 int /*<<< orphan*/  AR71XX_USB_CTRL_CONFIG ; 
 int /*<<< orphan*/  AR71XX_USB_CTRL_FLADJ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int RST_RESET_USB_HOST ; 
 int RST_RESET_USB_OHCI_DLL ; 
 int RST_RESET_USB_PHY ; 
 int USB_CTRL_CONFIG_EHCI_BUF_SWAP ; 
 int USB_CTRL_CONFIG_EHCI_DES_SWAP ; 
 int USB_CTRL_CONFIG_OHCI_BUF_SWAP ; 
 int USB_CTRL_CONFIG_OHCI_DES_SWAP ; 
 int USB_CTRL_FLADJ_A5_SHIFT ; 
 int USB_CTRL_FLADJ_HOST_SHIFT ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void
FUNC4(void)
{

	FUNC3(RST_RESET_USB_OHCI_DLL |
	    RST_RESET_USB_HOST | RST_RESET_USB_PHY);
	FUNC1(1000);

	FUNC2(RST_RESET_USB_OHCI_DLL |
	    RST_RESET_USB_HOST | RST_RESET_USB_PHY);
	FUNC1(1000);

	FUNC0(AR71XX_USB_CTRL_CONFIG,
	    USB_CTRL_CONFIG_OHCI_DES_SWAP |
	    USB_CTRL_CONFIG_OHCI_BUF_SWAP |
	    USB_CTRL_CONFIG_EHCI_DES_SWAP |
	    USB_CTRL_CONFIG_EHCI_BUF_SWAP);

	FUNC0(AR71XX_USB_CTRL_FLADJ,
	    (32 << USB_CTRL_FLADJ_HOST_SHIFT) |
	    (3 << USB_CTRL_FLADJ_A5_SHIFT));

	FUNC1(1000);
}