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

/* Variables and functions */
 int PCI_POWERSTATE_D0 ; 
 int PCI_POWERSTATE_D3 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(device_t dev)
{
	int ps;
	/*
	 * FLR is unsupported on GPUs so attempt a power-management reset by cycling
	 * the device in/out of D3 state.
	 * PCI spec says we can only go into D3 state from D0 state.
	 * Transition from D[12] into D0 before going to D3 state.
	 */
	ps = FUNC0(dev);
	if (ps != PCI_POWERSTATE_D0 && ps != PCI_POWERSTATE_D3)
		FUNC1(dev, PCI_POWERSTATE_D0);
	if (FUNC0(dev) != PCI_POWERSTATE_D3)
		FUNC1(dev, PCI_POWERSTATE_D3);
	FUNC1(dev, ps);
}