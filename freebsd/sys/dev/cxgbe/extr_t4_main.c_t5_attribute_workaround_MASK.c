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
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int PCIEM_CTL_NOSNOOP_ENABLE ; 
 int PCIEM_CTL_RELAXED_ORD_ENABLE ; 
 int /*<<< orphan*/  PCIER_DEVICE_CTL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(device_t dev)
{
	device_t root_port;
	uint32_t v;

	/*
	 * The T5 chips do not properly echo the No Snoop and Relaxed
	 * Ordering attributes when replying to a TLP from a Root
	 * Port.  As a workaround, find the parent Root Port and
	 * disable No Snoop and Relaxed Ordering.  Note that this
	 * affects all devices under this root port.
	 */
	root_port = FUNC2(dev);
	if (root_port == NULL) {
		FUNC1(dev, "Unable to find parent root port\n");
		return;
	}

	v = FUNC3(root_port, PCIER_DEVICE_CTL,
	    PCIEM_CTL_RELAXED_ORD_ENABLE | PCIEM_CTL_NOSNOOP_ENABLE, 0, 2);
	if ((v & (PCIEM_CTL_RELAXED_ORD_ENABLE | PCIEM_CTL_NOSNOOP_ENABLE)) !=
	    0)
		FUNC1(dev, "Disabled No Snoop/Relaxed Ordering on %s\n",
		    FUNC0(root_port));
}