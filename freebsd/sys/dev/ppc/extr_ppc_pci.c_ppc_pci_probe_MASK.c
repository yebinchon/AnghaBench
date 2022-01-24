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
struct pci_id {int type; int /*<<< orphan*/  rid; int /*<<< orphan*/  desc; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct pci_id* pci_ids ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	struct pci_id *id;
	uint32_t type;

	type = FUNC1(dev);
	id = pci_ids;
	while (id->type != 0xffff && id->type != type)
		id++;
	if (id->type == 0xffff)
		return (ENXIO);
	FUNC0(dev, id->desc);
	return (FUNC2(dev, id->rid));
}