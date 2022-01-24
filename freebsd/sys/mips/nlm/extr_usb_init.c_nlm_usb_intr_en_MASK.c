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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int uint32_t ;

/* Variables and functions */
 int USB_CTRL_INTERRUPT_EN ; 
 int /*<<< orphan*/  USB_INT_EN ; 
 int USB_OHCI_INTERRUPT1_EN ; 
 int USB_OHCI_INTERRUPT2_EN ; 
 int USB_OHCI_INTERRUPT_EN ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC3(int node, int port)
{
	uint32_t val;
	uint64_t port_addr;

	port_addr = FUNC0(node, port);
	val = FUNC1(port_addr, USB_INT_EN);
	val = USB_CTRL_INTERRUPT_EN  | USB_OHCI_INTERRUPT_EN |
		USB_OHCI_INTERRUPT1_EN | USB_OHCI_INTERRUPT2_EN;
        FUNC2(port_addr, USB_INT_EN, val);
}