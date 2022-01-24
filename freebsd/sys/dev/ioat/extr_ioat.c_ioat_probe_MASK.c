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
typedef  scalar_t__ u_int32_t ;
struct _pcsid {scalar_t__ type; int /*<<< orphan*/  desc; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (struct _pcsid*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct _pcsid* pci_ids ; 

__attribute__((used)) static int
FUNC3(device_t device)
{
	struct _pcsid *ep;
	u_int32_t type;

	type = FUNC2(device);
	for (ep = pci_ids; ep < &pci_ids[FUNC1(pci_ids)]; ep++) {
		if (ep->type == type) {
			FUNC0(device, ep->desc);
			return (0);
		}
	}
	return (ENXIO);
}