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
typedef  scalar_t__ uint16_t ;
struct pci_device_table {scalar_t__ vendor; scalar_t__ device; scalar_t__ subvendor; scalar_t__ subdevice; scalar_t__ class_id; scalar_t__ subclass; scalar_t__ revid; scalar_t__ match_flag_revid; scalar_t__ match_flag_subclass; scalar_t__ match_flag_class; scalar_t__ match_flag_subdevice; scalar_t__ match_flag_subvendor; scalar_t__ match_flag_device; scalar_t__ match_flag_vendor; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

const struct pci_device_table *
FUNC7(device_t child, const struct pci_device_table *id, size_t nelt)
{
	bool match;
	uint16_t vendor, device, subvendor, subdevice, class, subclass, revid;

	vendor = FUNC6(child);
	device = FUNC1(child);
	subvendor = FUNC5(child);
	subdevice = FUNC4(child);
	class = FUNC0(child);
	subclass = FUNC3(child);
	revid = FUNC2(child);
	while (nelt-- > 0) {
		match = true;
		if (id->match_flag_vendor)
			match &= vendor == id->vendor;
		if (id->match_flag_device)
			match &= device == id->device;
		if (id->match_flag_subvendor)
			match &= subvendor == id->subvendor;
		if (id->match_flag_subdevice)
			match &= subdevice == id->subdevice;
		if (id->match_flag_class)
			match &= class == id->class_id;
		if (id->match_flag_subclass)
			match &= subclass == id->subclass;
		if (id->match_flag_revid)
			match &= revid == id->revid;
		if (match)
			return (id);
		id++;
	}
	return (NULL);
}