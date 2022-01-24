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
struct _pcsid {scalar_t__ type; scalar_t__ desc; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int BUS_PROBE_DEFAULT ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct _pcsid* pci_ids ; 

__attribute__((used)) static int
FUNC2 (device_t device)
{
	u_int32_t	type = FUNC1(device);
	struct _pcsid	*ep = pci_ids;

	while (ep->type && ep->type != type)
		++ep;

	if (ep->desc)
	{
		FUNC0(device, ep->desc);
		return (BUS_PROBE_DEFAULT);
	}
	else
		return (ENXIO);
}