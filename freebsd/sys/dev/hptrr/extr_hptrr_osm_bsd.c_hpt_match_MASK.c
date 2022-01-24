#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_7__ {scalar_t__ (* get_supported_device_id ) (int,TYPE_1__*) ;struct TYPE_7__* next; } ;
struct TYPE_6__ {int vid; scalar_t__ did; } ;
typedef  TYPE_1__ PCI_ID ;
typedef  TYPE_2__ HIM ;

/* Variables and functions */
 int /*<<< orphan*/  attach_generic ; 
 TYPE_2__* him_list ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int,TYPE_1__*) ; 

__attribute__((used)) static HIM *FUNC3(device_t dev)
{
	PCI_ID pci_id;
	int i;
	HIM *him;

	/* Some of supported chips are used not only by HPT. */
	if (FUNC1(dev) != 0x1103 && !attach_generic)
		return (NULL);
	for (him = him_list; him; him = him->next) {
		for (i=0; him->get_supported_device_id(i, &pci_id); i++) {
			if ((FUNC1(dev) == pci_id.vid) &&
				(FUNC0(dev) == pci_id.did)){
				return (him);
			}
		}
	}
	return (NULL);
}