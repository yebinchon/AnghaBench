#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int pin; } ;
struct pci_devinst {int pi_slot; TYPE_1__ pi_lintr; } ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int pci_pins ; 

int
FUNC1(struct pci_devinst *pi)
{
	static int last_pin;

	if (pci_pins == 0)
		return (-1);
	if (FUNC0()) {
		/* For external bootrom use fixed mapping. */
		return (16 + (4 + pi->pi_slot + pi->pi_lintr.pin) % 8);
	}
	return (16 + (last_pin++ % pci_pins));
}