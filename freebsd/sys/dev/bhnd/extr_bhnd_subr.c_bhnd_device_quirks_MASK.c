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
typedef  int /*<<< orphan*/  uint32_t ;
struct bhnd_device_quirk {int /*<<< orphan*/  quirks; int /*<<< orphan*/  desc; } ;
struct bhnd_device {struct bhnd_device_quirk* quirks_table; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bhnd_device_quirk const*) ; 
 struct bhnd_device* FUNC1 (int /*<<< orphan*/ ,struct bhnd_device const*,size_t) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

uint32_t
FUNC3(device_t dev, const struct bhnd_device *table,
    size_t entry_size)
{
	const struct bhnd_device	*dent;
	const struct bhnd_device_quirk	*qent, *qtable;
	uint32_t			 quirks;

	/* Locate the device entry */
	if ((dent = FUNC1(dev, table, entry_size)) == NULL)
		return (0);

	/* Quirks table is optional */
	qtable = dent->quirks_table;
	if (qtable == NULL)
		return (0);

	/* Collect matching device quirk entries */
	quirks = 0;
	for (qent = qtable; !FUNC0(qent); qent++) {
		if (FUNC2(dev, &qent->desc))
			quirks |= qent->quirks;
	}

	return (quirks);
}