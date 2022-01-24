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
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,char,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

int
FUNC5(device_t pcib, device_t dev, int pin)
{
    device_t	bus;
    int		parent_intpin;
    int		intnum;

    /*
     *
     * The PCI standard defines a swizzle of the child-side device/intpin to
     * the parent-side intpin as follows.
     *
     * device = device on child bus
     * child_intpin = intpin on child bus slot (0-3)
     * parent_intpin = intpin on parent bus slot (0-3)
     *
     * parent_intpin = (device + child_intpin) % 4
     */
    parent_intpin = (FUNC4(dev) + (pin - 1)) % 4;

    /*
     * Our parent is a PCI bus.  Its parent must export the pcib interface
     * which includes the ability to route interrupts.
     */
    bus = FUNC2(pcib);
    intnum = FUNC0(FUNC2(bus), pcib, parent_intpin + 1);
    if (FUNC1(intnum) && bootverbose) {
	FUNC3(pcib, "slot %d INT%c is routed to irq %d\n",
	    FUNC4(dev), 'A' + pin - 1, intnum);
    }
    return(intnum);
}