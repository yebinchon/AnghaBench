#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ pci_dev; scalar_t__ peer_dev; } ;
typedef  TYPE_1__ qla_host_t ;
typedef  scalar_t__ device_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__**,int*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 

__attribute__((used)) static void
FUNC4(qla_host_t *ha)
{
	device_t *peers;
	int count, i, slot;
	int my_slot = FUNC3(ha->pci_dev);

	if (FUNC0(FUNC1(ha->pci_dev), &peers, &count))
		return;

	for (i = 0; i < count; i++) {
		slot = FUNC3(peers[i]);

		if ((slot >= 0) && (slot == my_slot) &&
			(FUNC2(peers[i]) ==
				FUNC2(ha->pci_dev))) {
			if (ha->pci_dev != peers[i]) 
				ha->peer_dev = peers[i];
		}
	}
}