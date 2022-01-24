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
struct disk_entry {int /*<<< orphan*/  index; } ;
struct device_entry {int flags; } ;

/* Variables and functions */
 int HR_DEVICE_IMMUTABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct disk_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device_entry*) ; 
 struct device_entry* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  disk_tbl ; 
 int /*<<< orphan*/  FUNC4 (struct disk_entry*) ; 
 int /*<<< orphan*/  link ; 

__attribute__((used)) static void
FUNC5(struct disk_entry *entry)
{
	struct device_entry *devEntry;

	FUNC1(entry != NULL);
	FUNC0(&disk_tbl, entry, link);

	devEntry = FUNC3(entry->index);

	FUNC4(entry);

	/*
	 * Also delete the respective device entry -
	 * this is needed for disk devices that are not
	 * detected by libdevinfo
	 */
	if (devEntry != NULL &&
	    (devEntry->flags & HR_DEVICE_IMMUTABLE) == HR_DEVICE_IMMUTABLE)
		FUNC2(devEntry);
}